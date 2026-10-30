module DATA_SYNC #(
    parameter BUS_WIDTH  = 8,   // width of the data bus being synchronized
              NUM_STAGES = 8    // depth of the enable-bit synchronizer chain
) (

input  [BUS_WIDTH - 1:0] unsync_bus,   // source-domain data bus (async to CLK)
input  bus_en,       // source-domain enable signal (async to CLK)
input  CLK,          // destination domain clock
input  RST,          

output reg [BUS_WIDTH - 1:0] sync_bus,      // destination-domain synchronized bus
output reg enable_pulse   // destination-domain enable pulse 

);
    

    reg [NUM_STAGES - 1:0] syncronizer;

    // pulse_gen: registered copy of the synchronized bit, one cycle old.
    //            Used as the "previous value" in edge detection.
    reg pulse_gen;

    // en_pulse: reflects the edge-detect result immediately 
    wire en_pulse;

    // Rising-edge detector: current synchronized bit is 1 AND the
    // previous cycle's value was 0  ==>  produces a single-cycle
    // pulse exactly on the 0->1 transition of the synchronized signal.
    assign en_pulse = syncronizer[0] & ~pulse_gen;

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            sync_bus     <= 0;
            enable_pulse <= 0;
            syncronizer  <= 0;
            pulse_gen    <= 0;
        end else begin
            
            // Shift bus_en into the synchronizer chain (MSB-in / shift-right).
            // syncronizer[0] is the fully-synchronized, stable version of bus_en,
            // delayed by NUM_STAGES clock cycles.
            syncronizer <= {bus_en, syncronizer[NUM_STAGES-1:1]};

            // Sample the synchronized bit one cycle "late" -> "previous value".
            pulse_gen <= syncronizer[0];

            // Register the pulse for the final output.
            enable_pulse <= en_pulse; 

            // Mux-into-register: capture the bus when the combinational pulse is currently asserted.
            if (en_pulse) begin
                sync_bus <= unsync_bus;                
            end

        end
        
    end


endmodule            
           
          


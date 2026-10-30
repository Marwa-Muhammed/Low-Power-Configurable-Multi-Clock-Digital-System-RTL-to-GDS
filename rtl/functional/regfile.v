module Reg_File # (
    parameter W      = 8,   // data width
    parameter D      = 16,  // depth, covers addresses 0x0 - 0x15 
    parameter addr_W = 4    // needs to address up to 0x15 
)(
    input  [W - 1 : 0]      WrData,
    input  [addr_W - 1 : 0] Address,
    input                   WrEn,
    input                   RdEn,

    input                   CLK,
    input                   RST,          // active-low async reset

    output reg [W - 1 : 0]  RdData,
    output reg              RdData_valid,

    output [W - 1 : 0]      REG0,         // Address: 0x0 -> ALU Operand A
    output [W - 1 : 0]      REG1,         // Address: 0x1 -> ALU Operand B
    output [W - 1 : 0]      REG2,         // Address: 0x2 -> UART Config
    output [W - 1 : 0]      REG3          // Address: 0x3 -> Div Ratio
);

    reg [W - 1 : 0] u_Reg_File [0 : D - 1];
    integer rst_i;

    assign REG0 = u_Reg_File[0];
    assign REG1 = u_Reg_File[1];
    assign REG2 = u_Reg_File[2];
    assign REG3 = u_Reg_File[3];

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            // Clear the whole array
            for (rst_i = 0; rst_i < D; rst_i = rst_i + 1) begin
                if (rst_i != 2 && rst_i != 3) begin
                u_Reg_File[rst_i] <= 'b0;
            end
            end

            RdData       <= {W{1'b0}};
            RdData_valid <= 1'b0;

            // Power-on defaults for reserved config registers
            u_Reg_File[2][0]   <= 1'b1;  // parity enable  -> default: ON
            u_Reg_File[2][1]   <= 1'b0;  // parity type    -> default: EVEN
            u_Reg_File[2][7:2] <= 6'd32; // prescale       -> default: 32
            u_Reg_File[3]      <= 8'd32; // div ratio      -> default: 32
        end
        else begin

            // Write Operation
            if (WrEn && !RdEn) begin
                case (Address)
                    2: begin
                        u_Reg_File[2][0]   <= WrData[0];   // parity enable
                        u_Reg_File[2][1]   <= WrData[1];   // parity type
                        u_Reg_File[2][7:2] <= WrData[7:2]; // prescale
                    end

                    3: u_Reg_File[3] <= WrData;            // div ratio

                    default: u_Reg_File[Address] <= WrData;
                endcase
            end

            // Read Operation
            else if (RdEn && !WrEn) begin
                RdData       <= u_Reg_File[Address];
                RdData_valid <= 1'b1;
            end
            else begin
                RdData_valid <= 1'b0;
            end

        end
    end

endmodule
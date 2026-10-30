# RTL-to-GDS Implementation of a Low-Power Configurable Multi-Clock Digital System

An ASIC design project for a UART-controlled digital system. The design combines a register file, a 16-bit ALU, clock-domain crossing (CDC) logic, clock gating, and scan-ready DFT support. The repository contains RTL and scripts covering simulation, lint, synthesis, formal equivalence, DFT, and physical design.

**Author:** Marwa Mohamed

For the full architecture, protocol details, design methodology, and project results, see the [project report](docs/Digital_System_Design_Project_Report.pdf).

## Design overview

The system receives commands over UART, performs register or ALU operations, and returns responses over UART. It uses separate reference and UART clock domains, with synchronization and an asynchronous FIFO to transfer data between them. Clock gating is used on the ALU clock, and the DFT-ready RTL includes scan and test-mode support.

| Block | Purpose |
|---|---|
| UART | Receives commands and sends responses |
| Register file | Stores configuration and operand values |
| 16-bit ALU | Performs arithmetic, logic, comparison, and shift operations |
| CDC logic | Synchronizes signals and transfers data across clock domains |
| Clocking and reset | Provides clock division, clock gating, and reset synchronization |
| DFT logic | Adds scan and test-mode support in the DFT-ready RTL |

See the report for port definitions, command formats, timing details, and the full block architecture.

## Repository Structure

```
.
├── README.md
├── LICENSE
├── .gitignore
├── docs/
│   └── Digital_System_Design_Project_Report.pdf             # System documentation & specification
├── rtl/
│   ├── functional/            # Pure functional RTL (Simulation & Lint)
│   └── dft_ready/             # DFT-augmented RTL (Synthesis, DFT, FM, PnR)
├── tb/
│   ├── SYS_TOP_tb.v           # Testbench for functional RTL
│   └── SYS_TOP_tb_dft.v       # Testbench for DFT-ready RTL
├── sim/                       # Simulation scripts & wave setups (run.do, wave.do)
├── lint/
│   └── spyglass/              # SpyGlass lint setup, constraints, & reports
├── synthesis/                 # Pre-DFT synthesis scripts, reports, & netlists
├── dft/                       # DFT insertion scripts, ATPG setup, & post-DFT netlists
├── formal/
│   ├── fm_pre_dft/            # Equivalence checking: Functional RTL vs Pre-DFT Netlist
│   └── fm_post_dft/           # Equivalence checking: Pre-DFT Netlist vs Post-DFT Netlist
├── pnr/                       # Place & Route scripts, floorplans, DEF, & GDS outputs
└── std_cells/                 # Target technology library files
```

---

## How to Run

### 1. Functional Simulation

```bash
cd sim
vlib work_func
vlog -work work_func -sv ../rtl/functional/*.v ../rtl/functional/*.sv ../tb/SYS_TOP_tb.v
vsim -c -lib work_func SYS_TOP_tb -do "run -all; quit"
```

### 2. DFT-Ready Simulation

```bash
cd sim
vlib work_dft
vlog -work work_dft -sv ../rtl/dft_ready/*.v ../rtl/dft_ready/*.sv ../tb/SYS_TOP_tb_dft.v
vsim -c -lib work_dft SYS_TOP_tb -do "run -all; quit"
```

> **GUI Mode:** Omit the `-c` flag and the `-do "..."` argument, then load `wave.do` inside ModelSim/QuestaSim to inspect signal waveforms.

### 3. Synthesis, Formal, and PnR Execution

Refer to the stage-specific execution scripts located within `synthesis/`, `dft/`, `formal/`, and `pnr/` directories.

---

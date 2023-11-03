**RISC-V Steel** is a free collection of RISC-V based IP cores. It features a 32-bit RISC-V processor and a configurable system-on-chip design plus a suite of software and hardware tools aimed to speed up building new RISC-V systems from scratch.

RISC-V Steel IP cores are written in Verilog and can be either synthesized on FPGAs or reused in custom integrated circuit designs.

## How to get started

[Check out the Getting Started Guide!](https://riscv-steel.github.io/riscv-steel/getting-started/)

The easiest way to get started with RISC-V Steel is to synthesize the [Hello World](https://github.com/riscv-steel/riscv-steel/tree/main/hello-world) demo on an FPGA and then modify it to meet your project requirements. In the Getting Started Guide we provide the steps to synthesize it on three different Digilent FPGA boards: Arty A7-35T, Arty A7-100T, and Cmod-A7.

## Available IP cores

#### [RISC-V 32-bit Processor](hardware/rvsteel-core.v)
Area-optimized, unpipelined 32-bit processor. Implements the RV32I instruction set of RISC-V, the Zicsr extension and the Machine-mode privileged architecture. Interfaces with external devices via AXI4-Lite Manager interface.

#### [RISC-V Steel SoC](hardware/rvsteel-soc.v)
All configurable system-on-chip design featuring RISC-V Steel 32-bit Processor + Memory + UART.

## License

RISC-V Steel is distributed under the [MIT License](LICENSE.md).

## Need help?

Please open a [new issue](https://github.com/riscv-steel/riscv-steel/issues).

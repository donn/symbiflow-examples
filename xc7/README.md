# SymbiFlow Toolchain Examples for Xilinx 7 Series

* **counter** - simple 4-bit counter driving LEDs. The design targets the [Basys3 board](https://store.digilentinc.com/basys-3-artix-7-fpga-trainer-board-recommended-for-introductory-users), the [Arty boards](https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board-for-makers-and-hobbyists/), and the [Zybo Z7 board](https://store.digilentinc.com/zybo-z7-zynq-7000-arm-fpga-soc-development-board/)

# To be added

* **picosoc** - [picorv32](https://github.com/cliffordwolf/picorv32) based SoC. The design targets the [Basys3 board](https://store.digilentinc.com/basys-3-artix-7-fpga-trainer-board-recommended-for-introductory-users/).
* **linux_litex** - [LiteX](https://github.com/enjoy-digital/litex) based system with Linux capable [VexRiscv core](https://github.com/SpinalHDL/VexRiscv). The design includes [DDR](https://github.com/enjoy-digital/litedram) and [Ethernet ](https://github.com/enjoy-digital/liteeth) controllers. The design targets the [Arty boards](https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board-for-makers-and-hobbyists/).

The Linux images for the **linux_litex** example can be built following the [linux on litex vexriscv](https://github.com/litex-hub/linux-on-litex-vexriscv) instructions.
The **linux_litex** example is already provided with working Linux images.

The detailed description about building the examples is available in the
[project documentation](https://symbiflow-examples.readthedocs.io/en/latest/building-examples.html#xilinx-7-series).

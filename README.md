h1. What is this?

This is my personal repo for exploring FPGA development using the [Alchitry Cu](https://www.sparkfun.com/products/16526) and the [Alchitry Io](https://www.sparkfun.com/products/16525) with the open source FPGA toolchain. It requires:

* [Icestorm](https://github.com/YosysHQ/icestorm) - http://www.clifford.at/icestorm/
* [Next-PNR](https://github.com/YosysHQ/nextpnr)
* [Yosys](https://github.com/YosysHQ/yosys)

It's BSD licensed so you can use it however you want.

h1. What does it do?

Not much yet. This build currently just runs a counter on the LEDs from bits 31:23. Importantly, it works.

Next is to get the reset button doing something, then expanding to doing things with the Io board.

h1. Why this board?

It's small and has a lot of IOs. If I get where I want to be, I'll grab the official HX8K CT256 board.

h2. Useful board resources

* [Alchitry Cu Schematic](https://cdn.sparkfun.com/assets/2/6/e/5/e/alchitry_cu_sch_update.pdf)
* [Alchitry Io Schematic](https://cdn.sparkfun.com/assets/4/0/4/5/7/alchitry_io_sch_update.pdf)
* [Icebreaker-FPGA](https://github.com/icebreaker-fpga/icebreaker)
** I have this board as well and it's also ICE40 based, albeit a much smaller configuration. A handy reference for applying the toolchain and the source of main.mk

h1. Needed

A fully open programming tool? I don't think the FTDI programming method is special, but I'm unfamiliar with how it's done. There's some sources on github but eh...

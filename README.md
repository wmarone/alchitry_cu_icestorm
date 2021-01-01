# What is this?

This is my personal repo for exploring FPGA development using the [Alchitry Cu](https://www.sparkfun.com/products/16526) and the [Alchitry Io](https://www.sparkfun.com/products/16525) with the open source FPGA toolchain. It requires:

* [Icestorm](https://github.com/YosysHQ/icestorm) - http://www.clifford.at/icestorm/
* [Next-PNR](https://github.com/YosysHQ/nextpnr)
* [Yosys](https://github.com/YosysHQ/yosys)

It's BSD licensed so you can use it however you want.

# What does it do?

## basic

The basic project runs a 32-bit counter and displays the upper 8 bits in the LEDs on the board.

## ioboard

Demonstration of how to interact with the Alchitry Io board. Similar to the basic project it runs
a 32-bit counter and displays the upper 8 bits, but does so across all 3 LED banks. Additionally,
the dip switches beneath them can control whether an LED is active.

Up next are the 7-segment+1 displays and the buttons. Buttonup is complete so the debounce can
be properly applied to all 5 buttons and reset.

## buttonup

Demonstration of button debounce and signal trace generation via iverilog. The debounce logic is
based on a digikey demonstration, but with my understandings tacked on (and my horror at the Verilog
syntax), along with a test fixture that demonstrates how it ignores short pulses but will emit a
signal so long as the button is held down long enough.

# Why this board?

It's small and has a lot of IOs. If I get where I want to be, I'll grab the official HX8K CT256 board.

## Useful board resources

* [Alchitry Cu Schematic](https://cdn.sparkfun.com/assets/2/6/e/5/e/alchitry_cu_sch_update.pdf)
* [Alchitry Io Schematic](https://cdn.sparkfun.com/assets/4/0/4/5/7/alchitry_io_sch_update.pdf)
* [Icebreaker-FPGA](https://github.com/icebreaker-fpga/icebreaker)
** I have this board as well and it's also ICE40 based, albeit a much smaller configuration. A handy reference for applying the toolchain and the source of main.mk

# Needed

A fully open programming tool? I don't think the FTDI programming method is special, but I'm unfamiliar with how it's done. There's some sources on github but eh...

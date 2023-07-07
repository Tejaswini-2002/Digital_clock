## Digital Clock using Verilog

This is a Verilog module that implements a digital clock. The module takes an input clock signal (`clk`) and a reset signal (`rst`), and provides output signals for hours (`hr`), minutes (`min`), and seconds (`sec`). FPGA board is used in the implementation.

### Features

- Accurate Timekeeping: The module ensures accurate timekeeping by updating the hours, minutes, and seconds based on the input clock signal.
- Reset Functionality: The clock can be reset to initialise the time to zero using the reset signal.
- 24-Hour Format Support: The hours are limited to a range of 0 to 23, making the module compatible with a 24-hour clock format.

### Description

The Digital Clock module displays time in a digital format, supporting both 12-hour and 24-hour formats. It provides outputs for hours, minutes, and seconds. The module utilises a clock signal to increment a counter, tracking the elapsed time.

Behavioral modeling is used to increment the time units. Each clock cycle increments the seconds, and when they reach 59, the minutes are incremented. Similarly, when the minutes reach 59, the hours are incremented. The module also includes a reset function.

The module converts the counter to a suitable format for driving digital displays, typically binary-coded decimal (BCD). BCD representation is used to control seven-segment LED displays, visually displaying the time.

The Digital Clock module consists of two always blocks. The first triggers on the clock signal or reset signal, incrementing the counter. The second triggers on the one-second clock or reset signal, updating the hours, minutes, and seconds.

Overall, the Digital Clock module ensures accurate timekeeping by updating the time correctly and considering the reset condition.



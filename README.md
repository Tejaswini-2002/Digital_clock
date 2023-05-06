# Digital_clock

This type of clock shows numbers to display time in digital format.
It can be in 12 or 24 hour format. There are three outputs to show the time -
hours, minutes and seconds. It works by keeping track of time using a clock signal,
usually provided by a quartz crystal oscillator. The clock signal is then used to increment a counter, which keeps track of the number of clock cycles that have passed.

The time units are incremented in an always block using Behavioral
modelling. At every clock cycle we increment 'seconds'.Whenever seconds reaches
the value '59' we increment 'minutes' by 1.Similarly whenever minutes reach '59' we
increment 'hours' by 1.Once hours reaches the value '23' we reset the digital clock.
To display the time, the counter is converted into a format that can be displayed
using digits. This typically involves converting the counter to binary-coded decimal
(BCD), which is a way of representing decimal numbers using binary digits.
The BCD representation of the time is then used to drive a set of displays, which
typically consist of seven-segment LED displays. Each digit is displayed using a set
of seven LED segments, arranged in the shape of a digit. By turning on and off the
appropriate segments for each digit, the current time can be displayed.

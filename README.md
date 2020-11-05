# Team12G21DALU

 1D ALU using alchitry FPGA ISTD team 12 group 2

16 bit ALU coded for Alchitry Au FPGA
**Au_top**: connects the external inputs (the dipswitch and buttons) to the internal submodule circuits (the ALU and its subcomponents) and displays the output of the ALU using the 7 segments and leds. 
Has an additional function to force the MSB of our internal ALU results to be 1 to show our circuit can check for errors.

**tester**:  the FSM that controls the states of the FPGA (which ALUFN is currently active, loading A and B, self test state) and checks if the output of our internal circuit is correct.

## How to use:

Buttons: 

* Top: select mode, pressing will cycle through the functions
* Left: View A value, press again to store current dip switch value into A
  7Segment shows value in hex
* Right: VIew B value, press again to store current dip switch value into B
  7Segment shows value in hex
* Middle: execute mode, executes the function you have chosen.
  Press again to store the previous result into A
* Bottom: initiate automatic testing

Dipswitch:

* io_dip \[1:0][7:0] = 16 bit value to be imputed in either A or B
* Io_dip\[2][7]: Forces the automatic testing result’s msb to be set  to 1, causing some test cases to have a wrong result thus halting the test

Testcases:
![image](https://user-images.githubusercontent.com/56643991/98290603-dc106a80-1fe4-11eb-8c80-357897b9957c.png)


Submodule interaction chart:

![image](https://user-images.githubusercontent.com/56643991/98290695-f8aca280-1fe4-11eb-817d-b78a7e34ed06.png)

//File Name: I2C_DataUnit.v
//Author: Jianjian Song
//Date: October 13, 2024
//ECE433 Fall 2024
//Data Unit for I2C Master Circuit
//Inputs: 
//Output: 
//ReadorWrite==1 to read
//ReadorWrite==0 to write

module I2C_DataUnit #(parameter	LENGTH = 8) (
input Reset, clock, WriteLoad, ReadorWrite, ShiftorHold, Select, StartStopAck,
input	[LENGTH-1:0]	SentData,
output [LENGTH-1:0]	ReceivedData, inout SDA);

//module I2C_ShiftRegister #(parameter LENGTH = 8)(
//input	Reset, CLOCK, WriteLoad, ShiftorHold, ShiftIn,
//input	[LENGTH-1:0]	SentData,
//output ShiftOut,
//output [LENGTH-1:0]	ReceivedData);

wire ShiftDataIn, ShiftDataOut;
I2C_ShiftRegister ShiftUnit(Reset,clock, WriteLoad, ShiftorHold, ShiftIn, SentData, ShiftOut, ReceivedData) ;

//module I2C_SDAmodule(input ReadorWrite, Select, StartStopAck, ShiftOut,
//output ShiftIn, inout SDA);

I2C_SDAmodule_temp SDAUnit(ReadorWrite, Select, StartStopAck, ShiftOut, ShiftIn, SDA) ;

endmodule

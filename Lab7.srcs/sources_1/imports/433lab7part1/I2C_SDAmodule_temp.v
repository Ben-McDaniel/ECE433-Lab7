`timescale 1ns / 1ps
//This is a tempplate to be completed by students
//File name: I2C_SDAmodule.v
//Author: Jianjian Song (change to your names)
//Date: October 13, 2024
//ECE433 Fall 2024
//Read==1
//Write==0,
module I2C_SDAmodule_temp(
input ReadorWrite, Select, 
input StartStopAck, ShiftOut,
output ShiftIn, inout SDA);


reg recievedData;


assign SDA = (ReadorWrite) ?1'bz : recievedData;
assign ShiftIn = SDA;

always @ (StartStopAck, ShiftOut, ReadorWrite, Select) begin
    case (Select)
        0: recievedData <= StartStopAck;
        1: recievedData <= ShiftOut;
    endcase
end
	
endmodule


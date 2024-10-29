//File Name: I2C_Host_Controller_phase2_temp.v
//Note: This is a template file for Lab 7 Phase II
//The controller state machine is not complete.
//Author: Jianjian Song
//Date: October 15, 2024
//Version 4.0
//ECE433, Fall 2024
//Lab 7 Phase 2
//I2C Master Controller:
//1. Send Address and read until acknowledgment is received
//2. Receive one byte temperature from a TMP101
//Inputs: 
//Output: 
//ReadorWrite==1 to read
//ReadorWrite==0 to write
//Select==0 to StartStopAck
//Select==1	to choose shift register
//Start is "1" to start communication

module I2C_Host_Controller_phase2_temp(input Reset, clock, Start, ClockI2C, SDA,
output reg WriteLoad, ReadorWrite, ShiftorHold, Select, BaudEnable,
output reg StartStopAck, DONE);

parameter InitialState=4'd0;
parameter StartState=4'd1; //send Start command and delay a while
parameter LoadState=4'd2; //load first frame into shift register
parameter WriteState=4'd3; //transmit first frame
parameter AcknowledgeWriteState=4'd4; //release bus to wait for receiver to acknowledge reception
parameter CheckState=4'd5; //check if there is a right receiver. Resend 1st frame if no receiver has acknowledged
parameter ReadState=4'd6; //receive 8-bit temperature
parameter WaitState=4'd7; //wait for the falling edge of 9th clock cycle
parameter AcknowledgeReadState=4'd8; //send acknowledge to the temperature sensor
parameter TransitState=4'd9; //delay a while before sending Stop command
parameter StopState=4'd10;    //send Stop command

reg [3:0] DataCounter;
//state definitions
reg [3:0] State, NextState;

wire TimeOut;
reg StartDelay;
//module DelayLoop2024Fall(input Clock, Reset, StartDelay, output reg Timeout);
DelayLoop2024Fall DelayUnit(clock, Reset, StartDelay,TimeOut);

wire OneShotNegative, OneShotPositive;
//module NegativeClockedOneShot(input InputPulse, Reset, CLOCK,output reg OneShot);
NegativeClockedOneShot OneShotNegativeUnit(ClockI2C, Reset, clock, OneShotNegative);

//module PositiveClockedOneShot(input InputPulse, Reset, CLOCK, output reg OneShot);
PositiveClockedOneShot OneShotPositiveUnit(ClockI2C, Reset, clock, OneShotPositive);

//ACKbit always store the current bit from SDA
reg ACKbit;
always@(posedge clock)
	if(Reset==1) begin State<=InitialState; ACKbit<=1; end
	else begin State<=NextState; 
		if(OneShotPositive==1) ACKbit<=SDA; else ACKbit<=ACKbit;
	//output logic
	case(State)
	InitialState: begin
		DataCounter <= 10;
		WriteLoad <= 0;
		ReadorWrite <= 0;
		Select <= 0;
		BaudEnable <= 0;
		StartStopAck <= 1;	
		StartDelay <= 0;
		ShiftorHold <= 0;
		DONE <= 0;
	end

	StartState: begin
		DataCounter <= 10;
		WriteLoad <= 0;
		ReadorWrite <= 0;
		Select <= 0;
		BaudEnable <= 0;
		StartStopAck <= 0;
		StartDelay <= 1;	
		ShiftorHold <= 0;
		DONE <= 0;
	end
	
	LoadState: begin
		if(OneShotNegative == 1) begin DataCounter <= DataCounter - 1; StartDelay <= 0; end
		else DataCounter <= DataCounter; //I think this line will cause problems...
		WriteLoad <= 1;
		ReadorWrite <= 0;
		Select <= 0;
		BaudEnable <= 1;
		StartStopAck <= 0;	
		ShiftorHold <= 0;
		DONE <= 0;
	end

	WriteState: begin
		if(OneShotNegative == 1) DataCounter <= DataCounter - 1;
		else DataCounter <= DataCounter; //I think this line will cause problems...
		WriteLoad <= 0;
		ReadorWrite <= 0;
		Select <= 1;
		BaudEnable <= 1;
		StartStopAck <= 0;
		StartDelay <= 0;
		ShiftorHold <= OneShotNegative;
		DONE <= 0;
	end

	AcknowledgeWriteState: begin
		DataCounter <= 10;
		WriteLoad <= 0;
		ReadorWrite <= 1;
		Select <= 0;
		BaudEnable <= 1;
		StartStopAck <= 0;
		StartDelay <= 0;
		ShiftorHold <= 0;
		DONE <= 0;
	end

    CheckState: begin
        DataCounter <= 10;
		WriteLoad <= 0;
		ReadorWrite <= 0;
		Select <= 0;
		BaudEnable <= 0;
		StartStopAck <= 0;
		StartDelay <= 0;
		ShiftorHold <= 0;
		DONE <= 0;
	end

    ReadState: begin
        if(OneShotPositive) begin DataCounter <= DataCounter - 1; StartDelay <= 0; end
        else begin DataCounter <= DataCounter; StartDelay <= StartDelay; end
		WriteLoad <= 0;
		ReadorWrite <= 1;
		Select <= 0;
		BaudEnable <= 1;
		StartStopAck <= 0;
		ShiftorHold <= OneShotPositive;
		DONE <= 0;
	end
    
    WaitState: begin
        DataCounter <= 10;
		WriteLoad <= 0;
		ReadorWrite <= 1;
		Select <= 0;
		BaudEnable <= 1;
		StartStopAck <= 1;
		StartDelay <= 0;
		DONE <= 0;
		ShiftorHold <= 0;
	end
    
    AcknowledgeReadState: begin
        DataCounter <= 10;
		WriteLoad <= 0;
		ReadorWrite <= 0;
		Select <= 0;
		BaudEnable <= 1;
		StartStopAck <= 0;
		StartDelay <= 0;
		DONE <= 0;
		ShiftorHold <= 0;
	end
    
	TransitState: begin
		DataCounter <= 10;
		WriteLoad <= 0;
		ReadorWrite <= 0;
		Select <= 0;
		BaudEnable <= 0;
		StartStopAck <= 0;
		StartDelay <= 1;
		ShiftorHold <= 0;
		DONE <= 0;
	end

	StopState: begin
		DataCounter <= 10;
		WriteLoad <= 0;
		ReadorWrite <= 0;
		Select <= 0;
		BaudEnable <= 0;
		StartStopAck <= 1;
		StartDelay <= 1;
		DONE <= 1;
		ShiftorHold <= 0;
	end
	
	default: begin
        DataCounter <= 10;
		WriteLoad <= 0;
		ReadorWrite <= 0;
		Select <= 0;
		BaudEnable <= 0;
		StartStopAck <= 1;	
		StartDelay <= 1;
		DONE <= 0;
	end
	
	endcase
end
always@(*) begin
//next state logic
case(State)

	InitialState: begin
		if(Start == 1 && ClockI2C == 1) NextState <= StartState;
		else NextState <= State;
	end

	StartState: begin
		if(TimeOut == 1) NextState <= LoadState;
		else NextState <= State;
	end
	
	LoadState: begin
		if(DataCounter == 9) NextState <= WriteState;
		else NextState <= State;
	end

	WriteState: begin
		if(DataCounter == 1) NextState <= AcknowledgeWriteState;
		else NextState <= State;
	end

	AcknowledgeWriteState: begin
		if(OneShotPositive == 1) NextState <= CheckState;
		else NextState <= State;
	end

    CheckState: begin
        if(SDA == 0) NextState <= ReadState;
        else NextState <= InitialState;
    end
    
    ReadState: begin
        if(DataCounter == 2) NextState <= WaitState;
        else NextState <= State;
    end
    
    WaitState: begin
        if(OneShotNegative) NextState <= AcknowledgeReadState;
        else NextState <= State;
    end
    
    AcknowledgeReadState: begin
        if(OneShotPositive) NextState <= TransitState;
        else NextState <= State;
    end
    
	TransitState: begin
		if(TimeOut == 1) NextState <= StopState;
		else NextState <= State;
	end

	StopState: begin
		if(TimeOut == 1) NextState <= InitialState;
		else NextState <= State;
	end
	
	default: NextState <= State;
endcase

end

endmodule

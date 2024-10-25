`timescale 1ns / 1ps

//This is a template from the instructor
//File Name: I2C_Host_Controller_phase1_temp.v
//This is a template to be completed by students
//Author: Ethan Townsend and Benjamin McDaniel
//Date: October 22, 2024
//ECE433 Fall 2024
//ControllerI2C for I2C Master Circuit
//Inputs: 
//Output: 
//ReadorWrite==1 to read
//ReadorWrite==0 to write
//Start is Logic "1" to start I2C communication
//StartDelay=1 to start DelayLoop2024Fall()


module I2C_Host_Controller_phase1_temp(
input Reset, clock, Start, ClockI2C,
output reg WriteLoad, ReadorWrite, ShiftorHold, Select, BaudEnable, StartStopAck);

parameter InitialState=3'd0, StartState=3'd1, LoadState=3'd2, WriteState=3'd3;
parameter AcknowledgeState=3'd4, TransitState=3'd5, StopState=3'd6;

reg [3:0] DataCounter; 
reg [2:0] State, NextState;

wire TimeOut;
reg StartDelay;

DelayLoop2024Fall DelayUnit(clock, Reset, StartDelay,TimeOut);

wire OneShotI2Cnegative, OneShotI2Cpositive;
NegativeClockedOneShot OneShotUnitNeg(ClockI2C, Reset, clock, OneShotI2Cnegative) ;
PositiveClockedOneShot OneShotUnitPos(ClockI2C, Reset, clock, OneShotI2Cpositive) ;
	
//next state block
//always@(posedge clock) begin
//if(Reset == 1) begin
//	NextState <= InitialState;
//	State <= InitialState;
//end else begin
//    State <= NextState;
//    end
//end

////counting the number of shifts
//always@(posedge clock) begin
//	if(Reset==1) begin DataCounter<=4'd10; end
//	else
//	case (State)
//		LoadState: if(OneShotI2Cnegative==1) DataCounter<=DataCounter-1'b1; 
//			else DataCounter<=DataCounter;
//		WriteState: if(OneShotI2Cnegative==1) DataCounter<=DataCounter-1'b1;
//			else DataCounter<=DataCounter;
//		default: DataCounter<=4'd10;
//	endcase
//end

always @(posedge clock) begin
    if (Reset == 1) begin
//        NextState <= InitialState;
        State <= InitialState;
        DataCounter <= 4'd10;
    end else begin
        State <= NextState;
        case (State)
            LoadState: if (OneShotI2Cnegative == 1) 
                            DataCounter <= DataCounter - 1'b1;
                        else 
                            DataCounter <= DataCounter;
            WriteState: if (OneShotI2Cnegative == 1) 
                             DataCounter <= DataCounter - 1'b1;
                         else 
                             DataCounter <= DataCounter;
            default: DataCounter <= 4'd10;
        endcase
    end
// end
 
// always @ (State or posedge OneShotI2Cnegative)begin
    //control output
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
	end
	
	LoadState: begin
		if(OneShotI2Cnegative == 1) DataCounter <= DataCounter - 1;
		else DataCounter <= DataCounter; //I think this line will cause problems...
		WriteLoad <= 1;
		ReadorWrite <= 0;
		Select <= 0;
		BaudEnable <= 1;
		StartStopAck <= 0;
		StartDelay <= 0;	
		ShiftorHold <= 0;
	end

	WriteState: begin
		if(OneShotI2Cnegative == 1) DataCounter <= DataCounter - 1;
		else DataCounter <= DataCounter; //I think this line will cause problems...
		WriteLoad <= 0;
		ReadorWrite <= 0;
		Select <= 1;
		BaudEnable <= 1;
		StartStopAck <= 0;
		StartDelay <= 0;
		ShiftorHold <= OneShotI2Cnegative;
	end

	AcknowledgeState: begin
		DataCounter <= 10;
		WriteLoad <= 0;
		ReadorWrite <= 1;
		Select <= 0;
		BaudEnable <= 1;
		StartStopAck <= 0;
		StartDelay <= 0;
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
	end

	StopState: begin
		DataCounter <= 10;
		WriteLoad <= 0;
		ReadorWrite <= 0;
		Select <= 0;
		BaudEnable <= 0;
		StartStopAck <= 1;
		StartDelay <= 0;
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
//		NextState <= InitialState;
	end
	
	endcase
end



always@(*) begin
//   if (Reset == 1) NextState <= InitialState;

//next state logic
case(State)

	InitialState: begin
		if(Start == 1 && ClockI2C == 1) NextState <= StartState;
		else NextState <= State;
	end

	StartState: begin
		if(TimeOut == 1) NextState <= LoadState; //this case fails I think???
		else NextState <= State;
	end
	
	LoadState: begin
		if(DataCounter == 9) NextState <= WriteState;
		else NextState <= State;
	end

	WriteState: begin
		if(DataCounter == 1) NextState <= AcknowledgeState;
		else NextState <= State;
	end

	AcknowledgeState: begin
		if(OneShotI2Cpositive == 1) NextState <= TransitState;
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

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

//parameter write = 0 read = 1, released = 2;
    // State parameters
    parameter WRITE = 2'b00, READ = 2'b01, RELEASED = 2'b10;
    reg [1:0] currentState, nextState;

    // Internal signal to drive SDA
    reg sda_drive;

    // Continuous assignment for SDA (tri-state logic)
    assign SDA = (currentState == WRITE) ? sda_drive : 1'bZ; // Drive SDA or set to high-Z

    // Initial state
    initial begin
        currentState = RELEASED;
        sda_drive = 1'bZ; // Initialize SDA to high-Z
    end

    // State transition and output logic
    always @(*) begin
        case (currentState)
            RELEASED: begin
                if (Select) begin
                    if (StartStopAck) begin
                        sda_drive = 1'b0; // Start condition
                        nextState = (ReadorWrite == WRITE) ? WRITE : READ;
                    end else begin
                        nextState = RELEASED; // Remain in RELEASED state
                        sda_drive = 1'bZ; // Ensure SDA is high-Z
                    end
                end else begin
                    nextState = RELEASED; // Remain in RELEASED state
                    sda_drive = 1'bZ; // Ensure SDA is high-Z
                end
            end
            
            WRITE: begin
                sda_drive = ShiftOut; // Output data to SDA
                if (StartStopAck) begin
                    sda_drive = 1'b1; // Stop condition
                    nextState = RELEASED; // Go to RELEASED state
                end else begin
                    nextState = WRITE; // Remain in WRITE state
                end
            end
            
            READ: begin
                sda_drive = 1'bZ; // Tri-state on read operation
                if (!StartStopAck) begin
                    ShiftIn = SDA; // Read data from SDA
                end
                if (StartStopAck) begin
                    sda_drive = 1'b1; // Stop condition
                    nextState = RELEASED; // Go to RELEASED state
                end else begin
                    nextState = READ; // Remain in READ state
                end
            end
            
            default: begin
                nextState = RELEASED; // Default state
                sda_drive = 1'bZ; // Default to high-Z
            end
        endcase
    end

    // State update on SDA signal changes
    always @(posedge SDA or negedge SDA) begin
        currentState <= nextState;
    end
	
endmodule


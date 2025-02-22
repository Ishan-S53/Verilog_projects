`timescale 1ns/1ps
`include "ALU.v"
module ALU_tb;

    reg [3:0] A, B;
    reg [2:0] ALU_Sel;
    wire [3:0] ALU_Out;
    wire Carry_Out;

    ALU uut (A, B, ALU_Sel, ALU_Out, Carry_Out);

    initial begin
        $dumpfile("ALU_tb.vcd");
        $dumpvars(0, ALU_tb);

        A = 4'b0011; B = 4'b0001; ALU_Sel = 3'b000; #10; // Addition
        A = 4'b0110; B = 4'b0010; ALU_Sel = 3'b001; #10; // Subtraction
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b010; #10; // AND
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b011; #10; // OR
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b100; #10; // XOR
        A = 4'b1100; ALU_Sel = 3'b101; #10; // NOT A

        $finish;
    end

endmodule
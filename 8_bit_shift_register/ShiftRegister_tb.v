`timescale 1ns/1ps
module ShiftRegister_tb;

    reg clk, reset, shift_dir;
    reg [7:0] data_in;
    wire [7:0] data_out;

    ShiftRegister uut (clk, reset, shift_dir, data_in, data_out);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("ShiftRegister_tb.vcd");
        $dumpvars(0, ShiftRegister_tb);

        clk = 0; reset = 1; data_in = 8'b10101010; shift_dir = 1; #10; // Reset
        reset = 0; #50; // Shift Left
        shift_dir = 0; #50; // Shift Right
        $finish;
    end

endmodule

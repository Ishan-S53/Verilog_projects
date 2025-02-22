`timescale 1ns/1ps
module Counter_tb;

    reg clk, reset, up_down;
    wire [3:0] count;

    Counter uut (clk, reset, up_down, count);

    always #5 clk = ~clk; // Clock with 10ns period

    initial begin
        $dumpfile("Counter_tb.vcd");
        $dumpvars(0, Counter_tb);

        clk = 0; reset = 1; up_down = 1; #10; // Reset
        reset = 0; #50; // Count Up
        up_down = 0; #50; // Count Down
        $finish;
    end

endmodule

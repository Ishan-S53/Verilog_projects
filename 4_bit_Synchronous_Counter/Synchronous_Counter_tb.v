module counter_tb;
    reg clk;
    reg rst;
    reg up_down;
    wire [3:0] count;

    counter_4bit uut (
        .clk(clk),
        .rst(rst),
        .up_down(up_down),
        .count(count)
    );

    initial begin
        // Initialize signals
        clk = 0;
        rst = 0;
        up_down = 1;  // Counter should increment
        #10 rst = 1;   // Reset the counter
        #10 rst = 0;   // Disable reset
        #20 up_down = 0;  // Change to decrement
        #50 $stop;      // Stop simulation
    end

    always #5 clk = ~clk;  // Clock generation with 10 ns period
endmodule

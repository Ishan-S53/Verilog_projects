module d_flip_flop_tb;
    reg clk;
    reg rst;
    reg enable;
    reg d;
    wire q;

    d_flip_flop uut (
        .clk(clk),
        .rst(rst),
        .enable(enable),
        .d(d),
        .q(q)
    );

    initial begin
        clk = 0;
        rst = 0;
        enable = 0;
        d = 0;
        #10 rst = 1;   // Apply reset
        #10 rst = 0;
        #10 enable = 1; d = 1; // Store data
        #10 enable = 0; d = 0; // No change to Q
        #10 enable = 1; d = 0; // Store new data
        #50 $stop;
    end

    always #5 clk = ~clk;  // Clock generation
endmodule

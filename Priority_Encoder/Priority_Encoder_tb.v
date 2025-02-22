module priority_encoder_tb;
    reg [3:0] in;
    wire [1:0] out;
    wire valid;

    priority_encoder uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin
        // Test cases
        in = 4'b0000; #10; // valid should be 0
        in = 4'b1000; #10; // out should be 11
        in = 4'b0100; #10; // out should be 10
        in = 4'b0010; #10; // out should be 01
        in = 4'b0001; #10; // out should be 00
        #50 $stop;
    end
endmodule

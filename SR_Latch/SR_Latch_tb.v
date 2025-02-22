module sr_latch_tb;
    reg s, r;
    wire q, qn;

    sr_latch uut (
        .s(s),
        .r(r),
        .q(q),
        .qn(qn)
    );

    initial begin
        // Test cases
        s = 0; r = 0; #10; // Q should maintain previous state
        s = 1; r = 0; #10; // Q should be set
        s = 0; r = 1; #10; // Q should be reset
        s = 1; r = 1; #10; // Invalid state
        #50 $stop;
    end
endmodule

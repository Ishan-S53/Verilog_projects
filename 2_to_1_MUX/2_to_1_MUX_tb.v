module mux_2to1_tb;
    reg a, b, sel;
    wire y;

    mux_2to1 uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        // Test cases
        a = 0; b = 1; sel = 0; #10; // y should be 0
        a = 0; b = 1; sel = 1; #10; // y should be 1
        a = 1; b = 0; sel = 0; #10; // y should be 1
        a = 1; b = 0; sel = 1; #10; // y should be 0
        #50 $stop;
    end
endmodule

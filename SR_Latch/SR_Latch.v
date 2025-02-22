module sr_latch (
    input s,  // Set
    input r,  // Reset
    output q, // Output
    output qn // Inverted output
);
    assign q = ~(r | qn);
    assign qn = ~(s | q);
endmodule

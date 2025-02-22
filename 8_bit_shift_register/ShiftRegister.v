module ShiftRegister (
    input clk, reset, shift_dir, // 1 for left shift, 0 for right shift
    input [7:0] data_in,
    output reg [7:0] data_out
);

always @(posedge clk or posedge reset) begin
    if (reset)
        data_out <= 8'b00000000;
    else if (shift_dir)
        data_out <= {data_out[6:0], data_in[0]}; // Left shift
    else
        data_out <= {data_in[7], data_out[7:1]}; // Right shift
end

endmodule

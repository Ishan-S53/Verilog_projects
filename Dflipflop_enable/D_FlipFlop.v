module d_flip_flop (
    input clk,
    input rst,
    input enable,
    input d,
    output reg q
);
    always @(posedge clk or posedge rst) begin
        if (rst) 
            q <= 0;
        else if (enable)
            q <= d;
    end
endmodule

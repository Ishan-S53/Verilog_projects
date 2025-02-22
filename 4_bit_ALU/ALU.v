module ALU (
    input [3:0] A, B,
    input [2:0] ALU_Sel,  // 3-bit control signal
    output reg [3:0] ALU_Out,
    output reg Carry_Out
);

always @(*) begin
    Carry_Out = 0;
    case (ALU_Sel)
        3'b000: {Carry_Out, ALU_Out} = A + B;   // Addition
        3'b001: {Carry_Out, ALU_Out} = A - B;   // Subtraction
        3'b010: ALU_Out = A & B;   // AND
        3'b011: ALU_Out = A | B;   // OR
        3'b100: ALU_Out = A ^ B;   // XOR
        3'b101: ALU_Out = ~A;      // NOT (Unary)
        default: ALU_Out = 4'b0000;
    endcase
end

endmodule
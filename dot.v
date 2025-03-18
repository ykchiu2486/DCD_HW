module dot(input [7:0] v1, input [7:0] v2, output [8:0] result);
    wire [7:0] m0 = v1[7:4] * v2[7:4]; 
    wire [7:0] m1 = v1[3:0] * v2[3:0]; 
    assign result = m0 + m1;
endmodule

module dot(input [7:0] vec1, input [7:0] vec2, output [8:0] result);
    wire [7:0] m0 = vec1[7:4] * vec2[7:4]; 
    wire [7:0] m1 = vec1[3:0] * vec2[3:0]; 
    assign result = m0 + m1;
endmodule

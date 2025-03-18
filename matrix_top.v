module matrix_top(input [15:0] A, input [7:0]  x, output [17:0] y);
    wire [8:0] y0, y1;
    
    dot dot0 (.v1(A[15:8]), .v2(x), .result(y0)); 
    dot dot1 (.v1(A[7:0]),  .v2(x), .result(y1)); 
    
    assign y = {y0, y1};
endmodule

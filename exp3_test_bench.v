module Lab5reportQ3Test();
reg [1:0]I;
wire [6:0]S;

Lab5report2 M1(.I(I),.S(S));
initial begin
I[0] = 1'b0;
I[1] = 1'b0;
#100
I[0] = 1'b0;
I[1] = 1'b1;
#100
I[0] = 1'b1;
I[1] = 1'b0;
#100
I[0] = 1'b1;
I[1] = 1'b1;
end
endmodule
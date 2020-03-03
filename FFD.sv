module FFD(input rst, input clk, input D,
				output Q, output Q')
				
always_ff@(posedge clk, posedge rst) begin
	if(rst)
		begin
			Q = 1'b0;
			Q' = 1'b1;
		end
	else 
		begin
			Q <= D;
			Q' <= ~D;
		end
end
endmodule 
module DEC7SEG(input aMSB, input b, input c, input dLSB,
					output [6:0] OUTDEC );
	logic [3:0] IN ;				
	 assign IN = {aMSB, b, c, dLSB};
	always_comb begin
		case (IN)
			4'h0: OUTDEC = 7'b0000001;
			4'h1: OUTDEC = 7'b1001111;
			4'h2: OUTDEC = 7'b0010010;
			4'h3: OUTDEC = 7'b0000110;
			4'h4: OUTDEC = 7'b1001100;
			4'h5: OUTDEC = 7'b0100100;
			4'h6: OUTDEC = 7'b0100000;
			4'h7: OUTDEC = 7'b0001111;
			4'h8: OUTDEC = 7'b0000000;
			4'h9: OUTDEC = 7'b0001100;
			4'ha: OUTDEC = 7'b0001000;
			4'hb: OUTDEC = 7'b1100000;
			4'hc: OUTDEC = 7'b0110001;
			4'hd: OUTDEC = 7'b1000010;
			4'he: OUTDEC = 7'b0110000;
			4'hf: OUTDEC = 7'b0111000;
		endcase
	end
endmodule 
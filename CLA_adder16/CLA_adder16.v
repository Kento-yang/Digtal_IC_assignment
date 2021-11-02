module CLA_adder16(
	input 	[31:0] 	a_in,
	input 	[31:0] 	b_in,
	input 			 	c_in,
	output 	[31:0] 	sum_o,
	output 				c_0
);
 
	wire [8:0] c_temp;
	assign c_temp[0]=c_in;
	assign c_0 = c_temp[8];
genvar i;
generate
		for(i=0;i<8;i=i+1) begin:CLA_adder4
			CLA_adder u(
				.C0(c_temp[i]), 
				.a(a_in[(4*i+3):(4*i)]),
				.b(b_in[(4*i+3):(4*i)]),
				.s(sum_o[(4*i+3):(4*i)]),
				.C4(c_temp[i+1]) 
			);
	end
endgenerate 


endmodule
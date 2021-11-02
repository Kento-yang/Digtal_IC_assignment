module CLA_adder(
		input 			  C0, //cin
		input 	[3:0]		a,
		input 	[3:0]		b,
		output  	[3:0]		s,
		output   		  C4 //cout
);
 
		wire 	[4:1]		c;
		wire 	[3:0]		P;
		wire 	[3:0]		g;

assign P[0]=a[0]^b[0];
assign P[1]=a[1]^b[1];
assign P[2]=a[2]^b[2];
assign P[3]=a[3]^b[3];

assign g[0]=a[0]&b[0];
assign g[1]=a[1]&b[1];
assign g[2]=a[2]&b[2];
assign g[3]=a[3]&b[3];

assign c[1]= g[0] | (C0&P[0]);
assign c[2]= g[1] | (P[1]&g[0]) | (P[1]&P[0]&C0);
assign c[3]= g[2] | (P[2]&g[1]) | (P[2]&P[1]&g[0]) | (P[2]&P[1]&P[0]&C0);
assign c[4]= g[3] | (P[3]&g[2]) | (P[3]&P[2]&g[1]) | (P[3]&P[2]&P[1]&g[0]) | (P[3]&P[2]&P[1]&P[0]&C0);
 
assign s[0]=P[0]^C0;
assign s[1]=P[1]^c[1];
assign s[2]=P[2]^c[2];
assign s[3]=P[3]^c[3];

assign C4=c[4];//cout
 
endmodule

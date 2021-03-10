module tabela (output s, input p, q);
// [ ] a) x'y+x y' SoP (1,2)
// [ ] c) x y'+x y SoP (2,3)
// [ ] e) x'y'+x y SoP (0,3)

	assign s = (~p&~q)|(p&q);
endmodule

module teste;
reg p;
reg q;
wire s;
tabela TABELA (s, p, q);
initial
begin
	p = 0;
	q = 0;
	$display("p q = s");
	$monitor("%b %b = %b", p, q, s);
	#1 p=0; q=0; 
	#1 p=0; q=1; 
	#1 p=1; q=0; 
	#1 p=1; q=1; 

end
endmodule

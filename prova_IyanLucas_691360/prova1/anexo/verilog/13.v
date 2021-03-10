module tabela (output s, input p, q);
// [ ] c) OR(AND(p,NOT(q)),AND(p,q)) = 0 0 1 1
// [ ] d) OR(AND(p,NOT(q)),NAND(p,q)) = 1 1 1 0
// [ ] e) OR(AND(NOT(p),q),AND(p,q) ) = 0 1 0 1
	assign s = (~p& q)| (p&q);
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

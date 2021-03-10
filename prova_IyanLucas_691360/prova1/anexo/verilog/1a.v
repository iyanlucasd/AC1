module tabela (output s, input p, q);
	assign s = (p|q) & (~q);
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

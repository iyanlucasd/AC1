module tabela (output s, input a, b, c);
	assign s = ~a&~b&c|a&~c|a&b ;
endmodule

module teste;
reg a;
reg b;
reg c;
wire s;
tabela TABELA (s, a, b, c);
initial
begin
	a = 0;
	b = 0;
	c = 0;
	$display("a b c = s");
	$monitor("%b %b %b = %b", a, b, c, s);
	#1 a=0; b=0; c=1;
	#1 a=0; b=1; c=0;
	#1 a=0; b=1; c=1;
	#1 a=1; b=0; c=0;
	#1 a=1; b=0; c=1;
	#1 a=1; b=1; c=0;
	#1 a=1; b=1; c=1;

end
endmodule

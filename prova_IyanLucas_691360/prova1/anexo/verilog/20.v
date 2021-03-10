module tabela (output s, input x, y, w, z);
//or((a xor c), not (nor(b',d'))
// (A+C')(A'+C)(B'+D') não é
// a'.c+b.d+a.c'
    assign s =  ~x&w|y&z|x&~w;
endmodule

module teste;
reg x;
reg y;
reg w;
reg z;
wire s;
tabela TABELA (s, x, y, w, z);
initial
begin
	x = 0;
	y = 0;
	w = 0;
	z = 0;
	$display("x y w z = s");
	$monitor("%b %b %b %b = %b", x, y, w, z, s);
	#1 x=0; y=0; w=0; z=1;
	#1 x=0; y=0; w=1; z=0;
	#1 x=0; y=0; w=1; z=1;
	#1 x=0; y=1; w=0; z=0;
	#1 x=0; y=1; w=0; z=1;
	#1 x=0; y=1; w=1; z=0;
	#1 x=0; y=1; w=1; z=1;
	#1 x=1; y=0; w=0; z=0;
	#1 x=1; y=0; w=0; z=1;
	#1 x=1; y=0; w=1; z=0;
	#1 x=1; y=0; w=1; z=1;
	#1 x=1; y=1; w=0; z=0;
	#1 x=1; y=1; w=0; z=1;
	#1 x=1; y=1; w=1; z=0;
	#1 x=1; y=1; w=1; z=1;

end
endmodule

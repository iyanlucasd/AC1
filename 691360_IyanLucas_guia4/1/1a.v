module tabelaVerdade (
    output s, input x, y, z
);
    assign s = ~x & ~(~y | z);
endmodule
module teste;
reg x;
reg z;
reg y;
wire s;
tabelaVerdade TABLE (s, x, y, z);
initial
begin
    x = 0;
    y = 0;
    z = 0;
    $display("x y z = s");
	$monitor("%b %b %b = %b", x, y, z, s);
	#1 x=0; y=0; z=1;
	#1 x=0; y=1; z=0;
	#1 x=0; y=1; z=1;
	#1 x=1; y=0; z=0;
	#1 x=1; y=0; z=1;
	#1 x=1; y=1; z=0;
	#1 x=1; y=1; z=1;
end    

endmodule
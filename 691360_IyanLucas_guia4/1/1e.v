    module circuit_01 ( output p, output q, input a, input b );
      wire w1,w2,w3,w4;
      nand N2 ( w2, a, w1 );
      nand N5 ( p , w4,w4 );
      nand N1 ( w1, a,  b );
      nand N4 ( q , w2,w3 );
      nand N3 ( w3, b, w1 );
    endmodule
module teste;
reg a;
reg b;
wire p;
wire q;
circuit_01 TABLE (p, q, a, b);
initial
begin
    a = 0;
    b = 0;
    $display("a b = p q");
	$monitor("%b %b = %b %b", a, b, p, q);
    $display("--------------");
	#1 a=1; b=1;
	#1 a=0; b=1;
	#1 a=1; b=0;


end    

endmodule
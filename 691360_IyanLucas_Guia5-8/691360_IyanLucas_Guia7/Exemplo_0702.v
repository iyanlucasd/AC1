
// ---------------------
module fxyz (output s1, output s2,
input a, input b);
and and1 (s1, a, b);
nand NAND1 (s2, a, b);  
endmodule // fxyz
// ---------------------
// -- test_module
// ---------------------
module test_module;
reg x, y;
wire s1, s2;
// instancias
fxyz FXYZ (s1, s2, x, y);
// valores iniciais
initial begin: start
x=1'b0; y=1'b0; // indefinidos
end
// parte principal
initial begin: main
// projetar testes do modulo
#1 $monitor("%4b %4b %4b %4b", x, y, s1, s2);
#1 x=0; y=0; 
#1 x=0; y=1;
#1 x=1; y=0;
#1 x=1; y=1;
end
endmodule //

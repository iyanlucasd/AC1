/*
Guia_0101.
*/
module Guia_0101;
// define data
integer x = 23; // decimal
integer y = 54; // decimal
integer z = 731; // decimal
integer alpha = 132; // decimal
integer beta = 23; // decimal
reg [7:0] b = 0; // binary
// actions
initial
begin : main
$display ( "Guia_0101 - Tests" );
$display ( "x = %d" , x );
$display ( "y = %d" , y );
$display ( "z = %d" , z );
$display ( "alpha = %d" , alpha );
$display ( "beta = %d" , beta );
$display ( "---------------------");
b = x;
$display ( "b(x) = %8b", b );
b = y;
$display ( "b(y) = %8b", b );
b = z;
$display ( "b(z) = %8b", b );
b = alpha;
$display ( "b(alpha) = %8b", b );
b = beta;
$display ( "b(beta) = %8b", b );
end // main
endmodule // Guia_0101
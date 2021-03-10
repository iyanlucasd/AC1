/*
Guia_0102.
*/
module Guia_0102;
// define data
integer x = 0;
integer y = 0; // decimal
integer z = 0; // decimal
integer alpha = 0; // decimal
integer beta = 0; // decimal
// decimal
reg [7:0] b = 8'b0010101; // binary (bits)
// actions
initial
begin : main
$display ( "Guia_0102 - Tests" );
$display ( "b = %8b", b );
x = b;
$display ( "x = %d", x );
b = 8'b0010110;
y = b;
$display ( "y = %d", y );
b = 8'b0101101;
z = b;
$display ( "z = %d", z );
b = 8'b0111011;
alpha = b;
$display ( "alpha = %d", alpha );
b = 8'b0111001;
beta = b;
$display ( "beta = %d", beta );

end // main
endmodule // Guia_0102
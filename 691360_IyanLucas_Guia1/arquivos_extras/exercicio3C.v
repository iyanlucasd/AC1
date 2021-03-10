/*
Guia_0103
*/
module Guia_0103;
// define data
integer x = 71;
integer y = 43; // decimal
integer z = 67; // decimal
integer alpha = 175; // decimal
integer beta = 151; // decimal
reg [7:0] b = 0; // binary
// actions
initial
begin : main
$display ( "Guia_0103 - Tests" );
b = x;
$display ( "b = %B (2) = %o (8) = %d (10) = %h (16)", b, b, b, b );
b = y;
$display ( "b = %B (2) = %o (8) = %d (10) = %h (16)", b, b, b, b );
b = z;
$display ( "b = %B (2) = %o (8) = %d (10) = %h (16)", b, b, b, b );
b = alpha;
$display ( "b = %B (2) = %o (8) = %d (10) = %h (16)", b, b, b, b );
b = beta;
$display ( "b = %B (2) = %o (8) = %d (10) = %h (16)", b, b, b, b );
end // main
endmodule // Guia_0103
/*
Guia_0104
*/
module Guia_0104;
// define data
integer x = 13; // decimal
reg [7:0] b = 0; // binary
// actions
initial
begin : main
$display ( "Guia_0104 - Tests" );
$display ( "x = %d" , x );
$display ( "b = %8b", b );
b = 8'b0010101;
$display ( "b = [%4b] [%4b] = %o", b[7:4], b[3:0], b[7:0]);
b = 8'b0010011;
$display ( "b = [%4b] [%4b] = %o", b[7:4], b[3:0], b[7:0]);
b = 8'b0101101;
$display ( "b = [%4b] [%4b] = %x", b[7:4], b[3:0], b[7:0]);
b = 8'b0100101;
$display ( "b = [%4b] [%4b] = %o", b[7:4], b[3:0], b[7:0]);
b = 8'b0101111;
$display ( "b = [%4b] [%4b] = %o", b[7:4], b[3:0], b[7:0]);
end // main
endmodule // Guia_0104

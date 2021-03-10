/*
Guia_0201
*/
module Guia_0201;
// define data
real
x = 0 ; // decimal
real 
alpha = 0 ; // decimal
real 
beta = 0 ; // decimal
real
gamma = 0 ; // decimal
real
pi = 0 ; // decimal
real power2 = 1.0; // power of 2
integer
y = 7 ; // counter
reg [7:0] a = 8'b11011000; // binary (only fraction part, Big Endian)
reg [7:0] b = 8'b01110000; // binary (only fraction part, Big Endian)
reg [7:0] c = 8'b01001000; // binary (only fraction part, Big Endian)
reg [7:0] d = 8'b01011000; // binary (only fraction part, Big Endian)
reg [7:0] e = 8'b10010000; // binary (only fraction part, Big Endian)
// actions
initial
begin : main
$display ( "Guia_0201 - Tests" );
$display ( "x = %f" , x );
//$display ( "b = 0.%8b", b );
while ( y >= 0 )
begin
power2 = power2 / 2.0;
if ( a[y] == 1 )
begin
x = x + power2;
end//end if a
if ( b[y] == 1 )
begin
alpha = alpha + power2;
end //end if b
if ( c[y] == 1 )
begin
beta = beta + power2;
end // end if c
if ( d[y] == 1 )
begin
gamma = gamma + power2;
end // end if d
if ( e[y] == 1 )
begin
pi = pi + power2;
end// end if e
y=y-1;
end // end while
gamma = gamma + 1;
pi = pi + 3;
$display ( "a = %f", x );
$display ( "b = %f", alpha );
$display ( "c = %f", beta );
$display ( "d = %f", gamma );
$display ( "e = %f", pi );
end // main
endmodule // Guia_0201
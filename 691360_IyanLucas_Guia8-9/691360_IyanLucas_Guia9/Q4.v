
`include "clock.v"

module pulse1 ( signal, clock );
   input clock;
   output signal;
   reg signal = 1'b0;
   always @ ( ~clock )
   begin
   #6 signal = 1'b1;
   #6 signal = 1'b0;
   end
endmodule // pulse

module Exemplo_0904;
   wire clock;
   clock clk ( clock );
   wire p1;
   pulse1 pls1 ( p1, clock );
   initial begin
      $dumpfile ( "Exemplo_0904.vcd" );
      $dumpvars ( 1, clock, p1 );
 #480 $finish;
   end
endmodule // Exemplo_0904


    `include "clock.v"

    module pulse1 ( signal, clock );
       input clock;
       output signal;
       reg signal = 1'b0;
       always @ ( ~clock )
       begin
       #36 signal = 1'b1;
       #36 signal = 1'b0;
       end
    endmodule // pulse

    module Exemplo_0905;
       wire clock;
       clock clk ( clock );
       wire p1;
       pulse1 pls1 ( p1, clock );
       initial begin
          $dumpfile ( "Exemplo_0905.vcd" );
          $dumpvars ( 1, clock, p1 );
     #480 $finish;
       end
    endmodule // Exemplo_0905

`include "db.v"

module top(
    input clk,              // 100MHz clock
    input rst_n,            // reset button (active low)
    input aio_s2,           // alchitry io switch 2
    output [7:0] led        // 8 user controllable LEDs
    );

    reg out;   
 
    reg [7:0] st = 1;
    
    db b1(clk, ~rst_n, aio_s2, out);

    always @ ( out )
        begin
            st = st << 1;
        end

    assign led = st;

endmodule

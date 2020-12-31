`default_nettype none
`timescale 1ns / 100ps

`include "cu_db.v"

module db_tb;

    wire clk, rst_n, aio_s2, out;

    localparam wait_period = 20;

    db b0(.clk(clk), .rst_n(rst_n), .button_in(aio_s2), .out(out));

    initial
        begin
            clk = 0;
            rst_n = 0;
            aio_s2 = 0;
            out = 0;
            #waitperiod;

            clk = 1;
            #waitperiod;
        end


endmodule

`default_nettype none
`timescale 1ns / 1ns

//`include "db.v"

module db_tb;

    initial
        begin
            $dumpfile("db_tb.vcd");
            $dumpvars(0, clk);
            $dumpvars(1, aio_s2);
            $dumpvars(2, db0);
        end

    reg clk = 0;
    reg aio_s2 = 0;
    reg rst_n = 1;
    reg out;

    always #10 clk = ~clk;

    db db0(clk, rst_n, aio_s2, out);

    initial
        begin
            # 1000000 aio_s2 = 1;
            # 1000000 aio_s2 = 0;
            # 1000000 aio_s2 = 1;
            # 1000000 aio_s2 = 0;
            # 1000000 aio_s2 = 1;
            # 1000000 aio_s2 = 0;
            # 1000000 aio_s2 = 1;
            # 1000000 aio_s2 = 0;
            # 1000000 aio_s2 = 1;
            # 1000000 aio_s2 = 0;
            # 10000000 aio_s2 = 1;
            # 10000000 aio_s2 = 0;
            # 20000000 aio_s2 = 1;
            # 20000000 aio_s2 = 0;
            # 40000000 $finish;
        end
endmodule

module db (
        input clk, n_reset, button_in,
        output reg out
    );

    parameter maxbit = 19; // Cu has a 100 MHz clock

    reg [maxbit - 1 : 0] q_reg;
    reg [maxbit - 1 : 0] q_next;

    reg f1, f2;

    wire q_add;
    wire q_reset;

    assign q_reset = (f1 ^ f2);         // xor of f1 and f2 (0x0=0, 0x1=1, 1x0=1, 1x1=0)
    assign q_add = ~(q_reg[maxbit-1]);  // Goes low whenever q_reg's MSB goes high

    always @ ( q_reset, q_add, q_reg ) // If any of these change...
        begin
            case ( {q_reset, q_add} ) // concatenation! q_reset is msb, q_add is lsb (for all of two bits)
                2'b00 :
                    q_next <= q_reg;  // non-blocking assignment (but why here?)
                2'b01 :
                    q_next <= q_reg + 1;
                default :
                    q_next <= { maxbit { 1'b0 } }; // put (maxbit) zeroes into q_next (i.e. zero it out), "replication" they call it.
            endcase
        end

    always @ ( posedge clk )
        begin
            if (n_reset == 1'b0)
                begin
                    f1 <= 1'b0; // non-blocking assignment allows all 3 of these to execute in parallel
                    f2 <= 1'b0;
                    q_reg <= { maxbit { 1'b0 } };
                end
            else
                begin
                    f1 <= button_in;
                    f2 <= f1; // This will not necessarily be equal to button_in as the <= doesn't preserve flow
                    q_reg <= q_next;
                end
        end

    always @ ( posedge clk )
        begin
            if (q_reg[maxbit-1] == 1'b1)
                out <= f2;
            else
                out = out;
        end
endmodule

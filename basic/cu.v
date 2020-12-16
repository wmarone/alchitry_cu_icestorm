module top(
    input clk,              // 100MHz clock
    input rst_n,            // reset button (active low)
    output [7:0] led,       // 8 user controllable LEDs
    input usb_rx,           // USB->Serial input
    output usb_tx           // USB->Serial output
    );
    
    wire rst = ~rst_n;
    
    assign usb_tx = usb_rx;  // echo the serial data

    reg [31:0] counter;

    always @(posedge clk) begin
        counter = counter + 1;
        led = counter[31:23];
    end

endmodule

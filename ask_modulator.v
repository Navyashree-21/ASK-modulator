module ASK_Modulator (
    input wire clk,            // Clock signal
    input wire reset,          // Reset signal
    input wire data_in,        // Binary input signal
    input wire carrier,        // Carrier signal
    output reg ask_out         // ASK modulated output
);

    // ASK Modulation Logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            ask_out <= 0;  // Reset the output
        end else begin
            ask_out <= data_in ? carrier : 0;  // Modulate the carrier
        end
    end

endmodule

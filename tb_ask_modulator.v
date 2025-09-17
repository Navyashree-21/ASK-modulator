Testbench:
module tb_ASK_Modulator;
    reg clk;
    reg reset;
    reg data_in;
    reg carrier;
    wire ask_out;

    // Instantiate the ASK_Modulator
    ASK_Modulator uut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .carrier(carrier),
        .ask_out(ask_out)
    );

    // Generate clock signal
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 100 MHz clock
    end
 // Generate carrier signal (simple square wave)
    initial begin
       
 carrier = 0;
        forever #10 carrier = ~carrier;  // 50 MHz carrier
    end

    // Test stimulus
    initial begin
        reset = 1;
        data_in = 0;
        #20 reset = 0;

        #50 data_in = 1;  // Modulate with data_in = 1
        #200 data_in = 0; // Modulate with data_in = 0
        #200 data_in = 1; // Modulate with data_in = 1

        #200 $finish;
    end

    // Monitor signals
    initial begin
        $monitor("Time=%0t | Reset=%b | Data_in=%b | Carrier=%b | ASK_Out=%b", 
                  $time, reset, data_in, carrier, ask_out);
    end

endmodule


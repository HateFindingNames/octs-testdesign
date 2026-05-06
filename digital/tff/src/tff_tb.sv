`timescale 1ns/1ps

module tff_tb;

    // Testbench signals
    logic clk_in;
    logic rst_n;
    logic clk_out;

    // Instantiate DUT = Device Under Test
    tff dut (
        .clk_in  (clk_in),
        .rst_n   (rst_n),
        .clk_out (clk_out)
    );

    // Clock generation:
    // Toggle every 5 ns -> full period = 10 ns
    initial begin
        clk_in = 0;
        forever #5 clk_in = ~clk_in; // changes every 5ns
    end

    // Stimulus:
    // Apply reset, then release it, then let it run
    initial begin
        rst_n = 0;          // hold reset active
        #12;                // wait 12ns
        rst_n = 1;          // release reset
        #100;               // let simulation run for 100ns
        $finish;
    end

    // Simple monitoring in console
    initial begin
        $display("time\tclk_in\trst_n\tclk_out");
        $monitor("%0t\t%b\t%b\t%b", $time, clk_in, rst_n, clk_out);
    end

    initial begin
        $dumpfile("tff_tb.vcd");
        $dumpvars(0, tff_tb);
    end

endmodule

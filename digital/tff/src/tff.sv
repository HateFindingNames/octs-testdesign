module tff (                      // Declare a module named tff.
    input  logic clk_in,           // Input clock-like signal to be divided by 2.
    input  logic rst_n,            // Active-low asynchronous reset.
    output logic clk_out           // Output signal: toggles at half the input frequency.
);

    // Sequential logic:
    // - triggers on the rising edge of clk_in
    // - also triggers when rst_n goes low
    always_ff @(posedge clk_in or negedge rst_n) begin
        if (!rst_n)                // If reset is asserted low...
            clk_out <= 1'b0;       // ...force the output to 0.
        else                       // Otherwise, on each rising edge of clk_in...
            clk_out <= ~clk_out;   // ...toggle the output state.
    end

endmodule                          // End of the module.

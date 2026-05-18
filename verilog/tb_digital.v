// tb_digital.v
// Functional testbench for the digital ADC control block.
//
// Models the analog ramp+comparator behaviorally:
//   - A behavioral counter "ramp_cnt" mirrors the real ramp voltage.
//   - cmp_out = (ramp_cnt >= vin_level)  - emulates "ramp crossed input"
//   - vin_level changes a few times during the test (different "voltages").
//
// Expected behavior:
//   For each conversion (256 cycles), the latched 'code' should equal the
//   approximate vin_level used for that conversion.

`timescale 1ns/1ps

module tb_digital;

    reg        clk = 0;
    reg        rst_n = 0;
    reg  [7:0] vin_level;          // emulates analog input voltage in ADC codes
    reg  [7:0] ramp_cnt;           // emulates ramp voltage counter
    wire       cmp_out;
    wire       rst_ramp;
    wire [7:0] code;
    wire       sample_valid;

    // 100 MHz clock -> 10 ns period (fast for sim only)
    always #5 clk = ~clk;

    // Comparator model: high when ramp >= vin_level
    assign cmp_out = (ramp_cnt >= vin_level);

    // Behavioral ramp: counts up each clock; reset when rst_ramp pulses.
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            ramp_cnt <= 8'd0;
        else if (rst_ramp)
            ramp_cnt <= 8'd0;
        else
            ramp_cnt <= ramp_cnt + 8'd1;
    end

    // DUT
    digital dut (
        .clk          (clk),
        .rst_n        (rst_n),
        .cmp_out      (cmp_out),
        .rst_ramp     (rst_ramp),
        .code         (code),
        .sample_valid (sample_valid)
    );

    // Trace each new sample
    always @(posedge sample_valid) begin
        $display("t=%0t  vin_level=%0d  latched_code=%0d  (diff=%0d)",
                 $time, vin_level, code, $signed({1'b0,code}) - $signed({1'b0,vin_level}));
    end

    // Stimulus
    initial begin
        $dumpfile("tb_digital.vcd");
        $dumpvars(0, tb_digital);

        vin_level = 8'd0;

        // Reset
        rst_n = 0;
        #50;
        rst_n = 1;

        // Run 4 conversions at different vin levels
        vin_level = 8'd64;
        repeat (260) @(posedge clk);

        vin_level = 8'd128;
        repeat (260) @(posedge clk);

        vin_level = 8'd200;
        repeat (260) @(posedge clk);

        vin_level = 8'd32;
        repeat (260) @(posedge clk);

        $display("done.");
        $finish;
    end

endmodule

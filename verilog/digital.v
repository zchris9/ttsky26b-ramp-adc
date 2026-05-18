// digital.v
// Control block for the 2-channel single-slope ADC.
//
// Inputs:
//   clk       : free-running clock from TT digital frame
//   rst_n     : async active-low reset from TT digital frame
//   cmp_out   : 1 when ramp >= input (from analog comparator)
//
// Outputs:
//   rst_ramp     : 1 for one clock cycle when counter wraps to 0 (resets ramp cap)
//   code[7:0]    : last latched ADC code
//   sample_valid : 1 for one clock cycle when a new code has just been latched
//
// Operation:
//   - 8-bit counter free-runs on clk.
//   - When counter wraps to 0, rst_ramp pulses high 1 cycle: ramp cap is pulled down,
//     ramp current source then charges it linearly during the next 256 cycles.
//   - When cmp_out has a rising edge (ramp crossed input voltage), the counter's
//     current value is captured into the output register and sample_valid pulses.
//   - Output register holds the previous valid code until a new conversion completes.

module digital (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       cmp_out,
    output wire       rst_ramp,
    output reg  [7:0] code,
    output wire       sample_valid
);

    // 8-bit free-running counter.
    reg [7:0] cnt;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            cnt <= 8'd0;
        else
            cnt <= cnt + 8'd1;
    end

    // Ramp reset pulse: assert when counter is at 0.
    // Synchronous detection with a one-cycle pulse is fine for the ramp generator.
    assign rst_ramp = (cnt == 8'd0);

    // synchronize the cmp_out input
    reg cmp_out_sync;
    always @(negedge clk or negedge rst_n) begin
        if (!rst_n)
            cmp_out_sync <= 1'b0;
        else
            cmp_out_sync <= cmp_out;
    end

    // sample on cmp_out_sync rising edge
    reg [7:0] code_int;
    reg _cmp_out_sync;
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
        begin
            _cmp_out_sync <= 1'b0;
            code_int <= 8'd0;
        end
        else
        begin
            _cmp_out_sync <= cmp_out_sync;
            if (cmp_out_sync & !_cmp_out_sync)
                code_int <= cnt;
            else
                code_int <= code_int;
        end
    end
    
    // write the sample to the output when counter is 0
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            code <= 8'd0;
        else
        begin
            if (cnt == 8'd0)
                code <= code_int;
            else
                code <= code;
        end
    end
    
    // indicate a new valid sample when the counter is 2
    assign sample_valid = (cnt == 8'd2);


endmodule

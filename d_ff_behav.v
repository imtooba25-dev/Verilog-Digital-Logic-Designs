module d_ff_behav(
    input clk, D,
    output reg Q
);

always @(posedge clk) begin
    Q<=D;
end

endmodule


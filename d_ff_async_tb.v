module d_ff_async_tb;
reg clk;
reg rst;
reg d;
wire q;

d_ff_async ff_dut(.clk(clk), .d(d), .rst(rst), .q(q));

initial begin
    $monitor ("time =%d | clk=%b rst=%b d=%b | q=%b", $time, clk, rst, d, q);

    clk=0
end
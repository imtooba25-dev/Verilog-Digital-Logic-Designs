module d_ff_behav_tb;
reg d;
reg clk;
wire q;

d_ff_behav ff_dut(.clk(clk), .D(d), .Q(q));

always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, d_ff_behav_tb);

    $monitor("time= %d | clk=%b \t d=%b | q=%b", $time, clk,d, q);

    clk=0; d=0; #10;
    d=1; #10;
    d=0; #10;
    #10 $finish;

    
end
endmodule
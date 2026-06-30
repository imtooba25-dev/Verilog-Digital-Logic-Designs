module half_sub_tb;
reg a,b;
wire diff, bor;
half_sub hs_dut(a,b,diff,bor);
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, half_sub_tb);

    $monitor("time=%d \t a=%b \t b=%b \t diff=%b \t bor=%b ", $time, a,b,diff,bor);

    a=0; b=0; #10
    a=0; b=1; #10
    a=1; b=0; #10
    a=1; b=1; #10

    #10 $finish
end
endmodule

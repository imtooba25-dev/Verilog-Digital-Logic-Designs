module half_using_full_tb;

reg a_fa, b_fa, cin_fa;
wire sum_fa, carry_fa;

half_using_full hf_dut(a_fa, b_fa, cin_fa, sum_fa, carry_fa);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, half_using_full_tb);

    $monitor("time= %d \t a_fa=%b \t b_fa=%b \t  cin_fa=%b \t sum_fa=%b \t carry_fa=%b", $time, a_fa, b_fa, cin_fa, sum_fa, carry_fa);

    a_fa=0; b_fa=0; cin_fa=0; #10
    a_fa=0; b_fa=0; cin_fa=1; #10
    a_fa=0; b_fa=1; cin_fa=0; #10
    a_fa=0; b_fa=1; cin_fa=1; #10
    a_fa=1; b_fa=0; cin_fa=0; #10
    a_fa=1; b_fa=0; cin_fa=1; #10
    a_fa=1; b_fa=1; cin_fa=0; #10
    a_fa=1; b_fa=1; cin_fa=1; #10

    #10 $finish;
end

endmodule

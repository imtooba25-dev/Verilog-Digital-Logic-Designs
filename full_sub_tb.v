module full_sub_tb;
reg a,b,bin;
wire bout,d;

full_sub fs_dut(a,b,bin, bout,d);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,  full_sub_tb);

    $monitor("time=%d \t a=%b \t b=%b \t bin=%b \t bout=%b \t d=%b \t", $time, a,b,bin,bout,d);

    a=0; b=0; bin=0; #10
    a=0; b=0; bin=1; #10
    a=0; b=1; bin=0; #10
    a=0; b=1; bin=1; #10
    a=1; b=0; bin=0; #10
    a=1; b=0; bin=1; #10
    a=1; b=1; bin=0; #10
    a=1; b=1; bin=1; #10

    #10 $finish;

end
 
endmodule

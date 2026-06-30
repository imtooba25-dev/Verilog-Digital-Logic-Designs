module full_add_tb;
reg a,b,cin;
wire s,c;

full_add fa_dut(a,b,cin,s,c);

initial begin
    $dumpfile ("dump.vcd");
    $dumpvars(0, full_add_tb);

    $monitor("time=%d \t a=%b \t b=%b \t cin=%b \t s=%b \t c=%b ", $time, a,b,cin,s,c); 

    a=0; b=0; cin=0; #10
    a=0; b=0; cin=1; #10
    a=0; b=1; cin=0; #10
    a=0; b=1; cin=1; #10
    a=1; b=0; cin=0; #10
    a=1; b=0; cin=1; #10
    a=1; b=1; cin=0; #10
    a=1; b=1; cin=1; #10

    #10 $finish;
    end

endmodule 

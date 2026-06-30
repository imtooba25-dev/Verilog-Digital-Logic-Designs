module mux_tb;
reg D0,D1,s;
wire y;

mux mux2_dut(D0,D1,s,y);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, mux_tb);

    $monitor("time= %d \t D0=%b \t D1=%b \t  s=%b \t y=%b ", $time, D0, D1, s, y);

    D0=0; D1=0; s=0; #10
    D0=0; D1=0; s=1; #10
    D0=0; D1=1; s=0; #10
    D0=0; D1=1; s=1; #10
    D0=1; D1=0; s=0; #10
    D0=1; D1=0; s=1; #10
    D0=1; D1=1; s=0; #10
    D0=1; D1=1; s=1; #10

    #10 $finish;
end

endmodule


module full_add_behav_tb;

reg A,B,cin;
wire S, Cout;

full_add_behav fab_dut(
    .X1(A),
    .X2(B),
    .cin(cin),
    .S(S),
    .Cout(Cout)
);

initial begin

     $dumpfile("dump.vcd");
    $dumpvars(0, full_add_behav_tb);

    $monitor("Time=%0t | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", $time, A, B, cin, S, Cout);
    
    A=0; B=0; cin=0; #10;
    A=0; B=0; cin=1; #10;
    A=0; B=1; cin=0; #10;
    A=0; B=1; cin=1; #10;
    A=1; B=0; cin=0; #10;
    A=1; B=0; cin=1; #10;
    A=1; B=1; cin=0; #10;
    A=1; B=1; cin=1; #10;

    #10 $finish;
 end
endmodule
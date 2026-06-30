module rca_tb;
reg [3:0] a_rca;
reg [3:0] b_rca;
reg cin;
wire [3:0] sum_rca;
wire cout;

rca ra_dut(a_rca, b_rca, cin, sum_rca, cout);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, rca_tb);

    $monitor("time = %d \t a_rca=%b \t b_rca=%b \t cin=%b \t sum_rca=%b \t cout=%b", $time, a_rca, b_rca, cin, sum_rca, cout);

    a_rca = 4'b0000; b_rca = 4'b0000; cin = 1'b0; #10;
    a_rca = 4'b0001; b_rca = 4'b0010; cin = 1'b0; #10;
    a_rca = 4'b0101; b_rca = 4'b0011; cin = 1'b0; #10;
    a_rca = 4'b0111; b_rca = 4'b0001; cin = 1'b1; #10;
    a_rca = 4'b1111; b_rca = 4'b0001; cin = 1'b0; #10;
    a_rca = 4'b1111; b_rca = 4'b1111; cin = 1'b1; #10;

    #10 $finish;
end
endmodule

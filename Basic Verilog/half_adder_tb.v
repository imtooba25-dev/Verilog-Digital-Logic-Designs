module half_adder_tb;
reg a, b;
wire sum,carry;
half_adder ha_dut( a,b,sum,carry);
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, half_adder_tb);

    $monitor("time=%d \t a=%b \t b=%b \t sum=%b \t carry=%b ", $time, a,b,sum,carry);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    #10 $finish;
    end

endmodule

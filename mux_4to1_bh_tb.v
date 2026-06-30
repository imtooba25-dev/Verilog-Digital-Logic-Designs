module mux_4to1_bh_tb;

reg [3:0] I;
reg [1:0] Sel ;

wire out;

mux_4to1_bh mux4_dut(.sel(Sel) , .i(I), .y(out));

initial begin
     $monitor("time= %d | Inputs: I3, I2, I1, I0 =%b | Select line = %b | Output =%b", $time, I, Sel, out);

     I = 4'b1010;
     Sel=2'b00; #10;
     Sel=2'b01; #10;
    Sel=2'b10; #10;
    Sel=2'b11; #10;

    $finish;

end
endmodule
module counter_bh_tb;

reg  clk;
reg reset;
reg enable;
wire [3:0] count;

counter_bh count_dut(.clk(clk), .reset(reset), .enable(enable), .count(count));
always #5 clk = ~clk;      //clock generation

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, counter_bh_tb);

    $monitor("time = %d | clk = %b reset =%b enable = %b | count = %b ", $time, clk, reset, enable, count);

   //initialise input
   clk = 0;
   reset = 0;
   enable = 0;

   #10;
   reset = 1;
   #20;
   reset = 0;
   #10;
 // enable counting
   enable =1;
   #200;
// disable counting
   enable = 0;
// re enable counting
   #40;
  enable  = 1;
#30;
  //test synchronous reset

  reset = 1;
  #10;
  reset = 0;
  #10; $finish;

end
endmodule

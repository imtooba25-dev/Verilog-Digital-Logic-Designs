module rca( a_rca, b_rca, cin, sum_rca, cout);
input [3:0] a_rca;
input [3:0] b_rca; 
input cin;
output [3:0] sum_rca;
output cout;

wire w1, w2, w3;

full_add fa1 (.a(a_rca[0]), .b(b_rca[0]), .cin(cin), .c(w1), .s(sum_rca[0]));

full_add fa2 (.a(a_rca[1]), .b(b_rca[1]), .cin(w1), .c(w2), .s(sum_rca[1]));

full_add fa3 (.a(a_rca[2]), .b(b_rca[2]), .cin(w2), .c(w3), .s(sum_rca[2]));

full_add fa4 (.a(a_rca[3]), .b(b_rca[3]), .cin(w3), .c(cout), .s(sum_rca[3]));

endmodule

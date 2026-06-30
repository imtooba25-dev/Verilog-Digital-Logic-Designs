module half_sub( a,b, diff, bor);
input (a,b);
output( diff, bor);
wire w1;

xor x1(diff, a,b);
not n1(w1, a);
and a1( bor, w1, b);

endmodule
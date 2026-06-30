module full_sub(a,b,bin, bout, d);
input a,b,bin;
output bout,d;

wire w1, w2, w3, w4, w5;

xor x1(w1, a, b);
xor x2 (d, w1, bin);

not n1(w2,a);

and a1(w3, w2,b);

not n2(w4, w1);

and a2(w5,w4,bin);

or o1(bout, w3, w5);

endmodule



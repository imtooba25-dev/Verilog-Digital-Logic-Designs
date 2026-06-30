module mux (D0, D1, s, y);
input D0,D1,s;
output y;

wire s_not,and1,and2;

not n1(s_not, s);

and a1(and1,D0,s_not);
and a2(and2, D1,s);

or o1(y, and1, and2);

endmodule

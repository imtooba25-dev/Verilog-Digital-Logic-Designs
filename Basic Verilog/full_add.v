module full_add(a,b ,cin, s, c);
input a,b,cin;
output s,c;
wire w1, w2, w3;

 xor x1 (w1, a,b);
 xor x2 ( s, w1, cin);

 and a1( w2, a,b);
 and a2(w3, w1, cin);

 or o1(c, w2,w3);

endmodule


module full_add_behav(
    input X1, X2, cin,
    output S, Cout
);

reg [1:0] temp;

always @(*) begin
    temp = { 1'b0, X1} + {1'b0, X2}+ {1'b0, cin};
end

assign S= temp[0];
assign Cout= temp[1];

endmodule


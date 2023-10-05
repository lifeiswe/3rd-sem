module file3(A,B,C,Z);
output Z;
input A, B, C;
wire w1,w2,w3;
and(w1,C,B);
or(w2,w1,A);
and(w3,A,B);
or(Z,w2,w3);
endmodule
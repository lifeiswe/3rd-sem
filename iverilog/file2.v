module file2(A,B,C,Z);
output Z;
input A, B, C;
wire w1;
and(w1,C,B);
or(Z,w1,A);
endmodule
module fullAdder(A,B,Cin,Sum,Carry);
output Sum,Carry;
input A, B, Cin;
wire w1,w2,w3,w4;
xor(w1,A,B);
xor(Sum,w1,Cin);

and(w2,A,B);
and(w3,B,Cin);
and(w4,Cin,A);

or(Carry,w2,w3,w4);
endmodule
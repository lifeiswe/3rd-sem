module file1_tb;
reg A,B,C; 
wire D,E;
file1 circuit(A,B,C,D,E);
initial
begin
A=1'b0;B=1'b0;C=1'b0;  #20;
A=1'b0;B=1'b0;C=1'b1;  #20;
A=1'b0;B=1'b1;C=1'b0;  #20;
A=1'b0;B=1'b1;C=1'b1;  #20;
A=1'b1;B=1'b0;C=1'b0;  #20;
A=1'b1;B=1'b0;C=1'b1;  #20;
A=1'b1;B=1'b1;C=1'b0;  #20;
A=1'b1;B=1'b1;C=1'b1;  #20;
end
initial
begin
$monitor($time,"A=%b, B=%b, C=%b, D=%b, E=%b",A,B,C,D,E);
end
initial
begin
$dumpfile("file1.vcd");
$dumpvars(0,file1_tb);
end
endmodule
module fullAdder_tb;
reg A,B,Cin; 
wire Sum,Carry;
fullAdder circuit5(A,B,Cin,Sum,Carry);
initial
begin
A=1'b0;B=1'b0;Cin=1'b0;  #20;
A=1'b0;B=1'b0;Cin=1'b1;  #20;
A=1'b0;B=1'b1;Cin=1'b0;  #20;
A=1'b0;B=1'b1;Cin=1'b1;  #20;
A=1'b1;B=1'b0;Cin=1'b0;  #20;
A=1'b1;B=1'b0;Cin=1'b1;  #20;
A=1'b1;B=1'b1;Cin=1'b0;  #20;
A=1'b1;B=1'b1;Cin=1'b1;  #20;
end
initial
begin
$monitor($time,"A=%b, B=%b, Cin=%b, Sum=%b, Carry=%b",A,B,Cin,Sum,Carry);
end
initial
begin
$dumpfile("fullAdder.vcd");
$dumpvars(0,fullAdder_tb);
end
endmodule
module andGate_tb;
reg a,b; wire y;
andGate and_test(a,b,y);
initial
begin
a=0;b=0;   #10;
a=0;b=1;   #10;
a=1;b=0;   #10;
a=1;b=1;   #10;
end
initial
begin
$monitor($time,"a=%b, b=%b, y=%b",a,b,y);
end
initial
begin
$dumpfile("andGate.vcd");
$dumpvars(0,andGate_tb);
end
endmodule
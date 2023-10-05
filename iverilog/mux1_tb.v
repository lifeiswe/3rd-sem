module mux1_tb;
reg I0,I1,S;
wire Y;

mux1 uut(I0,I1,S,Y);

initial begin
S = 0; I0 = 1; I1 = 0;
#10
I0 = 0; I1 = 1;
#10
S = 1; I0 = 1; I1 = 0;
#10
I0 = 0; I1 = 1;
#10
$finish();
end
initial begin
$dumpfile("mux1.vcd");
$dumpvars(0,mux1_tb);
end
                
endmodule
module mux2_tb;
reg i,j0,j1;
wire o;

mux2 uut(i,j0,j1,o);

initial begin
j0 = 0; i[0] = 1; i[1] = 0;
#10
i[0] = 0; i[1] = 1;
#10
j1 = 1; i[0] = 1; i[1] = 0;
#10
i[0] = 0; i[1] = 1;
#10
$finish();
end
initial begin
$dumpfile("mux2.vcd");
$dumpvars(0,mux2_tb);
end
                
endmodule
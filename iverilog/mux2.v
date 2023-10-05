module(input wire[0:3] i,j0,j1,output wire o)
wire t0,t1;

mux1 mux1_0(i[0],i[1],j1,t0);
mux1 mux1_1(i[2],i[3],j1,t1);
mux1 mux1_2(t0,t1,j0,o);

endmodule
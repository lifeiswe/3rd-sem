module alu(input wire [1:0] op,input wire [15:0]i0,i1,output wire [15:0] o,output wire cout);

	wire [14:0] c;

	alu_slice _i0(op,i0[0],i1[0],op[0],o[0],c[0]);
	alu_slice _i1(op,i0[1],i1[1],c[0],o[1],c[1]);
	alu_slice _i2(op,i0[2],i1[2],c[1],o[2],c[2]);
	alu_slice _i3(op,i0[3],i1[3],c[2],o[3],c[3]);
	alu_slice _i4(op,i0[4],i1[4],c[3],o[4],c[4]);
	alu_slice _i5(op,i0[5],i1[5],c[4],o[5],c[5]);	
	alu_slice _i6(op,i0[6],i1[6],c[5],o[6],c[6]);
	alu_slice _i7(op,i0[7],i1[7],c[6],o[7],c[7]);	
	alu_slice _i8(op,i0[8],i1[8],c[7],o[8],c[8]);
	alu_slice _i9(op,i0[9],i1[9],c[8],o[9],c[9]);	
	alu_slice _i10(op,i0[10],i1[10],c[9],o[10],c[10]);
	alu_slice _i11(op,i0[11],i1[11],c[10],o[11],c[11]);
	alu_slice _i12(op,i0[12],i1[12],c[11],o[12],c[12]);
	alu_slice _i13(op,i0[13],i1[13],c[12],o[13],c[13]);
	alu_slice _i14(op,i0[14],i1[14],c[13],o[14],c[14]);
	alu_slice _i15(op,i0[15],i1[15],c[14],o[15],cout);
endmodule
module fa(input wire i0,i1,cin,output wire sum,cout);

	wire t0,t1,t2;

	xor _i0(sum,i0,i1,cin);
	and _i1(t0,i0,i1);
	and _i2(t1,i1,cin);
	and _t3(t2,cin,i0);
	or _i4(cout,t0,t1,t2);
endmodule 
module addsub(input wire addsub,i0,i1,cin,output wire sumdiff,cout);

	wire t;
	xor _i1(t,i1,addsub);
	fa _i0(i0,t,cin,sumdiff,cout);
endmodule
module alu_slice(input wire[1:0] op,input wire i0,i1,cin,output wire o,cout);

	wire t_sumdiff,t_and,t_or,t_andor;
	addsub _i0(op[0],i0,i1,cin,t_sumdiff,cout);
	and _i1(t_and,i0,i1);
	or _i2(t_or,i0,i1);
	mux2 _i3(t_and,t_or,op[0],t_andor);
	mux2 _i4(t_sumdiff,t_andor,op[1],o);

endmodule

module mux2(D0, D1, S, Y);

output Y;
input D0, D1, S;
wire T1, T2, Sbar;

and (T1, D1, S), (T2, D0, Sbar);
not (Sbar, S);
or (Y, T1, T2);

endmodule

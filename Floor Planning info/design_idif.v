module four_fft(a,b,c,d,ai,bi,ci,di,A,Ai,B,Bi,C,Ci,D,Di);
input [3:0] a,b,c,d,ai,bi,ci,di;
output [5:0] A,Ai,B,Bi,C,Ci,D,Di;

assign A = a+b+c+d;
assign Ai =ai+ci+bi+di;
assign B =a-c-bi+di;
assign Bi =ai-ci+b+d;
assign C= a+c-b-d;
assign Ci=ai+ci-bi-di;
assign D= a-c+bi-di;
assign Di= ai+ci -b-d;

endmodule
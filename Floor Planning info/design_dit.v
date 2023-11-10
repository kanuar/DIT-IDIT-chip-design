module four_fft(a,b,c,d,A,Ai,B,Bi,C,Ci,D,Di);
input [3:0] a,b,c,d;
output [5:0] A,Ai,B,Bi,C,Ci,D,Di;

assign A = a+b+c+d;
assign Ai =0;
assign B =a-c;
assign Bi =d-b;
assign C= a+c-b-d;
assign Ci=0;
assign D= a-c;
assign Di= b-d;

endmodule
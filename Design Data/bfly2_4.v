

module bfly2_4(in,y,ini,yi,wr,wi,in0r,in0i,in1r,in1i);
input signed [8:0]in,y,ini,yi;
input signed [8:0]wr,wi;
output[8:0]in0r,in0i,in1r,in1i;
wire [17:0]p1,p2;
//assign p1=wr*y;
//assign p2=wi*y;
mul mul1 (y,yi,wr,wi,p1,p2);
//assign in0r=in+p1[8:0];
//assign in0i=p2[8:0];
add add1 (in,ini,p1[8:0],p2[8:0],in0r,in0i);
//assign in1r=in-p1[8:0];
//assign in1i=-p2[8:0];
sub sub1 (in,ini,p1[8:0],p2[8:0],in1r,in1i);
endmodule

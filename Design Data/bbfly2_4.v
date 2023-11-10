


module bbfly2_4(inr, ini, yr, yi, wr, wi, in0r, in0i, in1r, in1i);
  input signed [8:0] inr, ini, yr, yi;
  input signed [8:0] wr, wi;
  output [8:0] in0r, in0i, in1r, in1i;
  wire [17:0] p1, p2;
  assign p1 = wr * yr - wi * yi;
  assign p2 = wr * yi + wi * yr;
  assign in0r = inr + p1[8:0];
  assign in0i = ini + p2[8:0];
  assign in1r = inr - p1[8:0];
  assign in1i = ini - p2[8:0];
endmodule

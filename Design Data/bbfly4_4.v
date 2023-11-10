module bbfly4_4(inr, ini, yr, yi, wr, wi, in0r, in0i, in1r, in1i);
  input signed [8:0] inr, ini, yr, yi;
  input signed [8:0] wr, wi;
  output [8:0] in0r, in0i, in1r, in1i;
  wire [17:0] p1, p2, p3, p4;
  assign p1 = wr * yr - wi * yi;
  assign p2 = wr * yi + wi * yr;
  assign p3 = wr * yi + wi * yr;
  assign p4 = wr * yr - wi * yi;
  assign in0r = inr + p1[17:8] + p2[17:8];
  assign in0i = ini + p3[17:8] + p4[17:8];
  assign in1r = inr - p1[17:8] - p2[17:8];
  assign in1i = ini - p3[17:8] - p4[17:8];
endmodule

module idif_fft_8(clk,rst,inr0,inr1,inr2,inr3,inr4,inr5,inr6,inr7,ini0,ini1,ini2,ini3,ini4,ini5,ini6,ini7,outreal0,outreal1,outreal2,outreal3,outreal4,outreal5,outreal6,outreal7,outimag0,outimag1,outimag2,outimag3,outimag4,outimag5,outimag6,outimag7);
  input clk,rst;
  input signed [8:0]  inr0,inr1,inr2,inr3,inr4,inr5,inr6,inr7,ini0,ini1,ini2,ini3,ini4,ini5,ini6,ini7;
  output reg [8:0] outreal0,outreal1,outreal2,outreal3,outreal4,outreal5,outreal6,outreal7,outimag0,outimag1,outimag2,outimag3,outimag4,outimag5,outimag6,outimag7;
  wire [8:0] y0r, y1r, y2r, y3r, y4r, y5r, y6r, y7r;
  wire [8:0] y0i, y1i, y2i, y3i, y4i, y5i, y6i, y7i;
  wire [8:0] in20r, in20i, in21r, in21i, in22r, in22i, in23r, in23i;
  wire [8:0] in24r, in24i, in25r, in25i, in26r, in26i, in27r, in27i;
  wire [8:0] in10r, in10i, in11r, in11i, in12r, in12i, in13r, in13i;
  wire [8:0] in14r, in14i, in15r, in15i, in16r, in16i, in17r, in17i;

  parameter w0r = 9'b1;
  parameter w0i = 9'b0;
  parameter w1r = 9'b010110101; // 0.707 = 0.10110101
  parameter w1i = 9'b010110101; // -0.707 = 1.01001011
  parameter w2r = 9'b0;
  parameter w2i = 9'b1; // -1 (2's complement)
  parameter w3r = 9'b101001011; // -0.707 = 1.01001011
  parameter w3i = 9'b010110101; // -0.707 = 1.01001011

  // STAGE 1
  bbfly2_4 s11(inr0, ini0, inr4, ini4, w0r, w0i, in10r, in10i, in11r, in11i);
  bbfly2_4 s12(inr2, ini2, inr6, ini6, w0r, w0i, in12r, in12i, in13r, in13i);
  bbfly2_4 s13(inr1, ini1, inr5, ini5, w0r, w0i, in14r, in14i, in15r, in15i);
  bbfly2_4 s14(inr3, ini3, inr7, ini7, w0r, w0i, in16r, in16i, in17r, in17i);

  // STAGE 2
  bbfly2_4 s21(in10r, in10i, in12r, in12i, w0r, w0i, in20r, in20i, in22r, in22i);
  bbfly2_4 s22(in11r, in11i, in13r, in13i, w2r, w2i, in21r, in21i, in23r, in23i);
  bbfly2_4 s23(in14r, in14i, in16r, in16i, w0r, w0i, in24r, in24i, in26r, in26i);
  bbfly2_4 s24(in15r, in15i, in17r, in17i, w2r, w2i, in25r, in25i, in27r, in27i);

  // STAGE 3
  bbfly2_4 s31(in20r, in20i, in24r, in24i, w0r, w0i, y0r, y0i, y4r, y4i);
  bbfly4_4 s32(in21r, in21i, in25r, in25i, w1r, w1i, y1r, y1i, y5r, y5i);
  bbfly2_4 s33(in22r, in22i, in26r, in26i, w2r, w2i, y2r, y2i, y6r, y6i);
  bbfly4_4 s34(in23r, in23i, in27r, in27i, w3r, w3i, y3r, y3i, y7r, y7i);

always@(posedge clk or posedge rst)
if ( rst) 
begin
outreal0 <= 9'b0;
outreal1 <= 9'b0;
outreal2 <= 9'b0;
outreal3 <= 9'b0;
outreal4 <= 9'b0;
outreal5 <= 9'b0;
outreal6 <= 9'b0;
outreal7 <= 9'b0;
outimag0 <= 9'b0;
outimag1 <= 9'b0;
outimag2 <= 9'b0;
outimag3 <= 9'b0;
outimag4 <= 9'b0;
outimag5 <= 9'b0;
outimag6 <= 9'b0;
outimag7 <= 9'b0;
end 
else
begin
outreal0 <= y0r/8;
outreal1 <= y1r/8;
outreal2 <= y2r/8;
outreal3 <= y3r/8;
outreal4 <= y4r/8;
outreal5 <= y5r/8;
outreal6 <= y6r/8;
outreal7 <= y7r/8;
outimag0 <= y0i/8;
outimag1 <= y1i/8;
outimag2 <= y2i/8;
outimag3 <= y3i/8;
outimag4 <= y4i/8;
outimag5 <= y5i/8;
outimag6 <= y6i/8;
outimag7 <= y7i/8;
end
endmodule

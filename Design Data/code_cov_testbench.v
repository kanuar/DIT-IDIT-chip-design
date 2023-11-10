
module testbench; 
reg clk,rst;
reg [8:0] inr0,inr1,inr2,inr3,inr4,inr5,inr6,inr7,ini0,ini1,ini2,ini3,ini4,ini5,ini6,ini7;
wire [8:0] outreal0,outreal1,outreal2,outreal3,outreal4,outreal5,outreal6,outreal7,outimag0,outimag1,outimag2,outimag3,outimag4,outimag5,outimag6,outimag7;
dit_fft_8 dit_fft_8_test(clk,rst,inr0,inr1,inr2,inr3,inr4,inr5,inr6,inr7,ini0,ini1,ini2,ini3,ini4,ini5,ini6,ini7,outreal0,outreal1,outreal2,outreal3,outreal4,outreal5,outreal6,outreal7,outimag0,outimag1,outimag2,outimag3,outimag4,outimag5,outimag6,outimag7); 

initial begin
clk<=0;
rst<=0;
 inr0<=0;                                                   //1
 inr1<=0;                                                   //1
 inr2<=0;                                                  //1
 inr3<=0;                                                   //1
 inr4<=0;                                                    //1
 inr5<=0;                                                   //1
 inr6<=0;                                                   //1
 inr7<=0;    
 ini0<=0;                                                   //1
 ini1<=0;                                                   //1
 ini2<=0;                                                  //1
 ini3<=0;                                                   //1
 ini4<=0;                                                    //1
 ini5<=0;                                                   //1
 ini6<=0;                                                   //1
 ini7<=0;      
end

always #100 clk<= ~clk;
always #25 inr0<=$random;                                                   //1
always #25 inr1<=$random;                                                   //1
always #25 inr2<=$random;                                                   //1
always #25 inr3<=$random;                                                   //1
always #25 inr4<=$random;                                                   //1
always #25 inr5<=$random;                                                   //1
always #25 inr6<=$random;                                                   //1
always #25 inr7<=$random;                                                   //1

always #25 ini0<=$random;                                                   //1
always #25 ini1<=$random;                                                   //1
always #25 ini2<=$random;                                                   //1
always #25 ini3<=$random;                                                   //1
always #25 ini4<=$random;                                                   //1
always #25 ini5<=$random;                                                   //1
always #25 ini6<=$random;                                                   //1
always #25 ini7<=$random;                                                   //1
 
  
endmodule

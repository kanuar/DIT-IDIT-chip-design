


module reverse_testbench; 
reg clk,rst;
reg [8:0] inr0,inr1,inr2,inr3,inr4,inr5,inr6,inr7,ini0,ini1,ini2,ini3,ini4,ini5,ini6,ini7;
wire [8:0] outreal0,outreal1,outreal2,outreal3,outreal4,outreal5,outreal6,outreal7,outimag0,outimag1,outimag2,outimag3,outimag4,outimag5,outimag6,outimag7;
idif_fft_8 idif_fft_8_test(clk,rst,inr0,inr1,inr2,inr3,inr4,inr5,inr6,inr7,ini0,ini1,ini2,ini3,ini4,ini5,ini6,ini7,outreal0,outreal1,outreal2,outreal3,outreal4,outreal5,outreal6,outreal7,outimag0,outimag1,outimag2,outimag3,outimag4,outimag5,outimag6,outimag7); 
initial
begin clk = 0;
end 
always 
begin
//TOGGLE CLOCK EVERY 5ns
#5
clk = ~clk;
end

initial 
begin

rst =1;
#10
rst =0;

//testcase1
inr0=9'b000001000;                                                   //1
inr1=9'b000000000;                                                   //1
inr2=9'b000000000;                                                   //1
inr3=9'b000000000;                                                   //1
inr4=9'b000000000;                                                   //1
inr5=9'b000000000;                                                   //1
inr6=9'b000000000;                                                   //1
inr7=9'b000000000;                                                   //1

ini0=9'b000000000;                                                   //1
ini1=9'b000000000;                                                   //1
ini2=9'b000000000;                                                   //1
ini3=9'b000000000;                                                   //1
ini4=9'b000000000;                                                   //1
ini5=9'b000000000;                                                   //1
ini6=9'b000000000;                                                   //1
ini7=9'b000000000;                                                   //1

//testcase2
#100
inr0=9'b000000010;                                                   //1
inr1=9'b000000000;                                                   //1
inr2=9'b000000010;                                                   //1
inr3=9'b000000000;                                                   //1
inr4=9'b000000010;                                                   //1
inr5=9'b000000000;                                                   //1
inr6=9'b000000010;                                                   //1
inr7=9'b000000000;                                                   //1

ini0=9'b000000000;                                                   //1
ini1=9'b000000000;                                                   //1
ini2=9'b000000000;                                                   //1
ini3=9'b000000000;                                                   //1
ini4=9'b000000000;                                                   //1
ini5=9'b000000000;                                                   //1
ini6=9'b000000000;                                                   //1
ini7=9'b000000000; 

#100
inr0=9'b000000010;                                                   //1
inr1=9'b000000010;                                                   //1
inr2=9'b000000010;                                                   //1
inr3=9'b000000010;                                                   //1
inr4=9'b000000010;                                                   //1
inr5=9'b000000010;                                                   //1
inr6=9'b000000010;                                                   //1
inr7=9'b000000010;                                                   //1

ini0=9'b000000000;                                                   //1
ini1=9'b000000000;                                                   //1
ini2=9'b000000000;                                                   //1
ini3=9'b000000000;                                                   //1
ini4=9'b000000000;                                                   //1
ini5=9'b000000000;                                                   //1
ini6=9'b000000000;                                                   //1
ini7=9'b000000000; 

$finish;

end 
  
endmodule




module four_fft_tb;

  // Inputs
  reg [3:0] a, b, c, d ,ai, bi, ci, di;
  
  // Outputs
  wire [5:0] A, Ai, B, Bi, C, Ci, D, Di;
  
  // Instantiate the module under test
  four_fft uut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .ai(ai),
    .bi(bi),
    .ci(ci),
    .di(di),
    .A(A),
    .Ai(Ai),
    .B(B),
    .Bi(Bi),
    .C(C),
    .Ci(Ci),
    .D(D),
    .Di(Di)
  );
  
  reg clk;
  always #5 clk = ~clk;
  
  // Provide stimulus and observe outputs
  initial begin
    // Initialize inputs
    clk = 0;
    a = 4'b0000;
    b = 4'b0000;
    c = 4'b0000;
    d = 4'b0000;
    ai = 4'b0000;
    bi = 4'b0000;
    ci = 4'b0000;
    di = 4'b0000;
    
    // Wait for global reset to finish
    #150;
    
    // Enable the module
    a = 4'b0001;
    b = 4'b0010;
    c = 4'b0011;
    d = 4'b0100;
    
    // Wait for one clock cycle
    @(posedge clk);
    
    // Change the inputs
    a = 4'b0101;
    b = 4'b0110;
    c = 4'b0111;
    d = 4'b1000;
    
    // Wait for one clock cycle
    @(posedge clk);
    
    // Change the inputs
    a = 4'b1001;
    b = 4'b1010;
    c = 4'b1011;
    d = 4'b1100;
    
    // Wait for one clock cycle
    @(posedge clk);
    
    // Change the inputs
    a = 4'b1101;
    b = 4'b1110;
    c = 4'b1111;
    d = 4'b0000;
    
    // Wait for one clock cycle
    @(posedge clk);
    
    a = 4'b0001; 
    b = 4'b0010; 
    c = 4'b0100; 
    d = 4'b1000;
    
    @(posedge clk);
    
    a = 4'b1111;
     b = 4'b1111; 
     c = 4'b1111; 
     d = 4'b1111;
     
    
    @(posedge clk);
    a = 4'b1010;
     b = 4'b0101;
      c = 4'b0011;
       d = 4'b1100;
       
       
    @(posedge clk);
    a = 4'b0110; 
    b = 4'b1001; 
    c = 4'b1110; 
    d = 4'b0001;
    
    @(posedge clk);
    
    a = 4'b1101; 
    b = 4'b0010; 
    c = 4'b0111; 
    d = 4'b1000;
    
    @(posedge clk);
    
    a = 4'b0100; 
    b = 4'b1011; 
    c = 4'b0001; 
    d = 4'b1110;
    
    @(posedge clk);
    a = 4'b1001; 
    b = 4'b0110; 
    c = 4'b1010; 
    d = 4'b0101;
    
     @(posedge clk);
    a = 4'b0011; 
    b = 4'b1100; 
    c = 4'b1000; 
    d = 4'b0111;
    @(posedge clk);
    // End the simulation
    $finish;
  end
  
endmodule

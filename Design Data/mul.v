

module mul(
input wire [8:0] a_real,
input wire [8:0] a_img,
input wire [8:0] b_real,
input wire [8:0] b_img,
output reg [17:0] y_real,
output reg [17:0] y_img
);

always @* begin
y_real = a_real*b_real ;  //y_real = a_real*b_real - a_img*b_img;
y_img = a_real*b_img;  //y_img = a_real*b_img + a_img*b_real;
end

endmodule

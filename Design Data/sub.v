module sub(
    input wire [8:0] a_real,
    input wire [8:0] a_img,
    input wire [8:0] b_real,
    input wire [8:0] b_img,
    output wire [8:0] y_real,
    output wire [8:0] y_img
);

    assign y_real = a_real - b_real;
    assign y_img = - b_img;  //assign y_img = a_img - b_img;

endmodule

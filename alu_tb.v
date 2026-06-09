`timescale 1ns / 1ps

module alu_tb(

    );
    
    reg [3:0] a, b;
    reg [2:0] sel;
    wire [3:0] y;
    
    alu dut (a, b, sel, y);
    
    initial begin
    $monitor ("a=%b b=%b sel=%b y=%b",a, b, sel, y);
    a=4'd10; b=4'd5;
    
    sel=3'b000; #10;
    sel=3'b001; #10;
    sel=3'b010; #10;
    sel=3'b011; #10;
    sel=3'b100; #10;
    sel=3'b101; #10;
    sel=3'b110; #10;
    sel=3'b111; #10;
    
    $finish;
  end
endmodule

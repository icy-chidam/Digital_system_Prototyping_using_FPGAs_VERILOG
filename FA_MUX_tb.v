`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 11:43:06
// Design Name: 
// Module Name: FA_MUX_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_FA_Mux_1;

reg a, b, c;
wire sum, carry;

// Instantiate the FA_Mux_1 module
FA_Mux_1 uut (
    .a(a),
    .b(b),
    .c(c),
    .sum(sum),
    .carry(carry)
);

initial begin
$monitor (" Simtime =%b,a=%b,b=%b,c=%b,sum=%b,carry=%b", $time,a,b,c,sum,carry);
 end 
   
   initial begin
    // Assign value of c as 1'b0
    c = 1'b0;
    
    // Test all possible combinations of a and b
    a = 1'b0; b = 1'b0;c = 1'b0; #10;
    a = 1'b0; b = 1'b1; c = 1'b0;#10;
    a = 1'b1; b = 1'b0; c = 1'b0;#10;
    a = 1'b1; b = 1'b1; c = 1'b0;#10;
    a = 1'b0; b = 1'b0; c = 1'b1;#10;
    a = 1'b0; b = 1'b1; c = 1'b1;#10;
    a = 1'b1; b = 1'b0; c = 1'b1;#10;
    a = 1'b1; b = 1'b1; c = 1'b1;#10;
    
    $finish;
end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 14:43:15
// Design Name: 
// Module Name: FA_Mux
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


module FA_Mux(input c,i0,i1,i2,i3,[1:0]sel,output reg dumm
 );
always@(*)
begin
case(sel)
2'b00: dumm = i0;
2'b01: dumm = i1;
2'b10: dumm = i2;
2'b11: dumm = i3;
//default: ;
endcase
end
endmodule

module FA_Mux_1(input a,b,c,output sum,carry
);
assign cbar=~c;
wire i0, i1, i2, i3;
FA_Mux sum_block(.c(c),.i0(c),.i1(cbar),.i2(cbar),.i3(c),.sel({b,a}),.dumm(sum)
);
FA_Mux carry_block(.c(c),.i0(1'b0),.i1(c),.i2(c),.i3(1'b1),.sel({b,a}),.dumm(carry)
);
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2018 12:11:11 PM
// Design Name: 
// Module Name: aes
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


module aes(
    input clk,
    input [0:15] sw,
    output [3:0] an,
    output dp,
    output [6:0] seg
    );
    
    //logic [0:1407] key_schedule;
    //reg [0:127] cipher_key = 128'h2b7e151628aed2a6abf7158809cf4f3c;  // NIST test key
    //reg [0:127] plain_text = 128'h3243f6a8885a308d313198a2e0370734;    //NIST test vector
    //reg [0:127] plain_text   = 128'h0ee00ee00ee00ee00ee00ee00ee00ee0;
    reg [0:127] plain_text = {sw, sw, sw, sw, sw, sw, sw, sw};
    reg [0:127] cipher_text;
    /*
    key_expansion key_expansion_ut(
                    .cipher_key(cipher_key),
                    .clk(clk),
                    .key_schedule(key_schedule)
    );
    */
    aes_encrypt aes_encrypt_instance(.in(plain_text),
                        .clk(clk),
                        .out(cipher_text)
    );
    
    reg btnC = 1'b0;
    
    display u (
    
    .x(cipher_text[0:15]),
    .clk(clk),
    .clr(btnC),
    .a_to_g(seg),
    .an(an),
    .dp(dp)
    );
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2018 09:20:02 AM
// Design Name: 
// Module Name: key_expansion
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


module key_expansion(
    input [0:127] cipher_key,
    input clk,
    output logic [0:1407] key_schedule
    );
    integer i;
    integer j;
    reg [0:31] temp_rot_word;
    reg [0:31] temp_sub_word;
    reg [0:31] temp;

    always @(negedge clk)
    begin
        key_schedule[0:127] = cipher_key; // The first key is the original key.
        for( i = 4; i < 44; i++)
        begin
            temp = key_schedule[(i-1)*32+:32];
            if (i % 4 == 0)
            begin
                temp_rot_word = {key_schedule[((i-1)*32 + 8)+:24], key_schedule[(i-1)*32+:8]};    
                for(j = 0; j < 32; j = j + 8)
                begin
                    temp_sub_word[j+:8] = globals::SBOX[temp_rot_word[j+:4] * 16 + temp_rot_word[j+4+:4]];
                end
                temp = temp_sub_word ^ {globals::rcon[i/4], 24'h000000};
            end
            key_schedule[32*i+:32] = key_schedule[(i-4)*32+:32] ^ temp;
            $display("RotWord %h | SubWord %h | Rcon %h | After XOR %h | Final %h", temp_rot_word, temp_sub_word, globals::rcon[i/4], temp, key_schedule[32*i+:32]);
        end
    end
endmodule
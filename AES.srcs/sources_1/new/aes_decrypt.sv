`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2018 05:43:18 PM
// Design Name: 
// Module Name: aes_decrypt
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


module aes_decrypt(input [0:127] in,
    input [0:1407] key_schedule,
    input clk,
    output reg [0:127] out //out is used as the intermediate state and also the final output
    );
    
    //Helper variables
    integer i;
    integer round;
    integer c;
    integer row;
    
    // To store intermediate states
    reg [0:127] state;
    reg [0:127] inv_mix_column_state;
    
    always @(posedge clk)
    begin
        state = in; // Starting with plain text
        $display("--------------------Input--------------------");
        $display("State: %h", state);
        $display("Round Key Value: %h", key_schedule[1280:1407]);
        // Add the first round key. This happens outside of the loop
        /*
        for(c = 0; c < 4; c = c + 1) 
        begin
            state[8*(c+0)+:8]  = state[8*(c+0)+:8]  + key_schedule[(0 + c + 0)+:8];
            state[8*(c+32)+:8] = state[8*(c+32)+:8] + key_schedule[(0 + c + 32)+:8];
            state[8*(c+64)+:8] = state[8*(c+64)+:8] + key_schedule[(0 + c + 64)+:8];
            state[8*(c+96)+:8] = state[8*(c+96)+:8] + key_schedule[(0 + c + 96)+:8];
        end
        */
        state = state ^ key_schedule[1280:1407];
        $display("After AddRoundKey %h", state);
        
        // Loop for 9 rounds. Last round is different
        for(round = 9; round >= 0; round = round - 1)
        begin
            $display("-------------------- Round %0d --------------------", round);
            $display("State: %h", state);
            
            // Applying ShiftRows operation on the state
            {state[(0 * 8)+0 +:8], state[(0 * 8)+32 +:8], state[(0 * 8)+64 +:8], state[(0 * 8)+96 +:8]} =
                                {state[(0 * 8)+0 +:8], state[(0 * 8)+32 +:8], state[(0 * 8)+64 +:8], state[(0 * 8)+96 +:8]};
            {state[(1 * 8)+0 +:8], state[(1 * 8)+32 +:8], state[(1 * 8)+64 +:8], state[(1 * 8)+96 +:8]} =
                                {state[(1 * 8)+96 +:8], state[(1 * 8)+0 +:8], state[(1 * 8)+32 +:8], state[(1 * 8)+64 +:8]};
            {state[(2 * 8)+0 +:8], state[(2 * 8)+32 +:8], state[(2 * 8)+64 +:8], state[(2 * 8)+96 +:8]} =
                                {state[(2 * 8)+64 +:8], state[(2 * 8)+96 +:8], state[(2 * 8)+0 +:8], state[(2 * 8)+32 +:8]};
            {state[(3 * 8)+0 +:8], state[(3 * 8)+32 +:8], state[(3 * 8)+64 +:8], state[(3 * 8)+96 +:8]} =
                                {state[(3 * 8)+32 +:8], state[(3 * 8)+64 +:8], state[(3 * 8)+96 +:8], state[(3 * 8)+0 +:8]};
            $display("After InvShiftRows: %h", state);
            
            // Applying InvSubBytes operation on the state
            for(i = 0; i < 128; i = i + 8)
            begin
                state[i+:8] = globals::ISBOX[state[i+:4] * 16 + state[i+4+:4]];
            end
            $display("After InvSubBytes: %h", state);
            
            // Applying AddRoundKey operation to the state
            /*
            for(c = 0; c < 4; c = c + 1) 
            begin
                state[8*(c+0)+:8]  = state[8*(c+0)+:8]  | key_schedule[(round * 128 + c + 0)+:8];
                state[8*(c+32)+:8] = state[8*(c+32)+:8] | key_schedule[(round * 128 + c + 32)+:8];
                state[8*(c+64)+:8] = state[8*(c+64)+:8] | key_schedule[(round * 128 + c + 64)+:8];
                state[8*(c+96)+:8] = state[8*(c+96)+:8] | key_schedule[(round * 128 + c + 96)+:8];
            end
            */
            state = state ^ key_schedule[round*128 +:128];
            $display("RoundKey Value %h", key_schedule[round*128 +:128]);
            $display("After AddRoundKey %h", state);
            
            //Applying InvMixColumns operation on the states
            if (round != 0)
            begin
                for(c = 0; c < 4; c = c + 1)
                begin
                    inv_mix_column_state[c*32+0  +:8]  = globals::gf_table_14[state[c*32+0+:8]] ^ globals::gf_table_11[state[c*32+8+:8]] ^ globals::gf_table_13[state[c*32+16+:8]] ^ globals::gf_table_9[state[c*32+24+:8]];
                    inv_mix_column_state[c*32+8  +:8]  = globals::gf_table_9[state[c*32+0+:8]] ^ globals::gf_table_14[state[c*32+8+:8]] ^ globals::gf_table_11[state[c*32+16+:8]] ^ globals::gf_table_13[state[c*32+24+:8]];
                    inv_mix_column_state[c*32+16 +:8]  = globals::gf_table_13[state[c*32+0+:8]] ^ globals::gf_table_9[state[c*32+8+:8]] ^ globals::gf_table_14[state[c*32+16+:8]] ^ globals::gf_table_11[state[c*32+24+:8]];
                    inv_mix_column_state[c*32+24 +:8]  = globals::gf_table_11[state[c*32+0+:8]] ^ globals::gf_table_13[state[c*32+8+:8]] ^ globals::gf_table_9[state[c*32+16+:8]] ^ globals::gf_table_14[state[c*32+24+:8]];
                end
                state = inv_mix_column_state;
                $display("After InvMixColumns: %h", inv_mix_column_state);
            end
        end
        out = state;
        $display("PLAIN TEXT: %h", out);
    end
endmodule

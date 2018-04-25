`timescale 1ns / 1ps

package globals;
    const bit [0:7] SBOX [256] = {
        8'h63, 8'h7c, 8'h77, 8'h7b, 8'hf2, 8'h6b, 8'h6f, 8'hc5, 8'h30, 8'h01, 8'h67, 8'h2b, 8'hfe, 8'hd7, 8'hab, 8'h76,
        8'hca, 8'h82, 8'hc9, 8'h7d, 8'hfa, 8'h59, 8'h47, 8'hf0, 8'had, 8'hd4, 8'ha2, 8'haf, 8'h9c, 8'ha4, 8'h72, 8'hc0,
        8'hb7, 8'hfd, 8'h93, 8'h26, 8'h36, 8'h3f, 8'hf7, 8'hcc, 8'h34, 8'ha5, 8'he5, 8'hf1, 8'h71, 8'hd8, 8'h31, 8'h15,
        8'h04, 8'hc7, 8'h23, 8'hc3, 8'h18, 8'h96, 8'h05, 8'h9a, 8'h07, 8'h12, 8'h80, 8'he2, 8'heb, 8'h27, 8'hb2, 8'h75,
        8'h09, 8'h83, 8'h2c, 8'h1a, 8'h1b, 8'h6e, 8'h5a, 8'ha0, 8'h52, 8'h3b, 8'hd6, 8'hb3, 8'h29, 8'he3, 8'h2f, 8'h84,
        8'h53, 8'hd1, 8'h00, 8'hed, 8'h20, 8'hfc, 8'hb1, 8'h5b, 8'h6a, 8'hcb, 8'hbe, 8'h39, 8'h4a, 8'h4c, 8'h58, 8'hcf,
        8'hd0, 8'hef, 8'haa, 8'hfb, 8'h43, 8'h4d, 8'h33, 8'h85, 8'h45, 8'hf9, 8'h02, 8'h7f, 8'h50, 8'h3c, 8'h9f, 8'ha8,
        8'h51, 8'ha3, 8'h40, 8'h8f, 8'h92, 8'h9d, 8'h38, 8'hf5, 8'hbc, 8'hb6, 8'hda, 8'h21, 8'h10, 8'hff, 8'hf3, 8'hd2,
        8'hcd, 8'h0c, 8'h13, 8'hec, 8'h5f, 8'h97, 8'h44, 8'h17, 8'hc4, 8'ha7, 8'h7e, 8'h3d, 8'h64, 8'h5d, 8'h19, 8'h73,
        8'h60, 8'h81, 8'h4f, 8'hdc, 8'h22, 8'h2a, 8'h90, 8'h88, 8'h46, 8'hee, 8'hb8, 8'h14, 8'hde, 8'h5e, 8'h0b, 8'hdb,
        8'he0, 8'h32, 8'h3a, 8'h0a, 8'h49, 8'h06, 8'h24, 8'h5c, 8'hc2, 8'hd3, 8'hac, 8'h62, 8'h91, 8'h95, 8'he4, 8'h79,
        8'he7, 8'hc8, 8'h37, 8'h6d, 8'h8d, 8'hd5, 8'h4e, 8'ha9, 8'h6c, 8'h56, 8'hf4, 8'hea, 8'h65, 8'h7a, 8'hae, 8'h08,
        8'hba, 8'h78, 8'h25, 8'h2e, 8'h1c, 8'ha6, 8'hb4, 8'hc6, 8'he8, 8'hdd, 8'h74, 8'h1f, 8'h4b, 8'hbd, 8'h8b, 8'h8a,
        8'h70, 8'h3e, 8'hb5, 8'h66, 8'h48, 8'h03, 8'hf6, 8'h0e, 8'h61, 8'h35, 8'h57, 8'hb9, 8'h86, 8'hc1, 8'h1d, 8'h9e,
        8'he1, 8'hf8, 8'h98, 8'h11, 8'h69, 8'hd9, 8'h8e, 8'h94, 8'h9b, 8'h1e, 8'h87, 8'he9, 8'hce, 8'h55, 8'h28, 8'hdf,
        8'h8c, 8'ha1, 8'h89, 8'h0d, 8'hbf, 8'he6, 8'h42, 8'h68, 8'h41, 8'h99, 8'h2d, 8'h0f, 8'hb0, 8'h54, 8'hbb, 8'h16
    };
    
    const bit [0:7] gf_table_2 [256] = {
        8'h00, 8'h02, 8'h04, 8'h06, 8'h08, 8'h0a, 8'h0c, 8'h0e, 8'h10, 8'h12, 8'h14, 8'h16, 8'h18, 8'h1a, 8'h1c, 8'h1e, 
        8'h20, 8'h22, 8'h24, 8'h26, 8'h28, 8'h2a, 8'h2c, 8'h2e, 8'h30, 8'h32, 8'h34, 8'h36, 8'h38, 8'h3a, 8'h3c, 8'h3e, 
        8'h40, 8'h42, 8'h44, 8'h46, 8'h48, 8'h4a, 8'h4c, 8'h4e, 8'h50, 8'h52, 8'h54, 8'h56, 8'h58, 8'h5a, 8'h5c, 8'h5e, 
        8'h60, 8'h62, 8'h64, 8'h66, 8'h68, 8'h6a, 8'h6c, 8'h6e, 8'h70, 8'h72, 8'h74, 8'h76, 8'h78, 8'h7a, 8'h7c, 8'h7e, 
        8'h80, 8'h82, 8'h84, 8'h86, 8'h88, 8'h8a, 8'h8c, 8'h8e, 8'h90, 8'h92, 8'h94, 8'h96, 8'h98, 8'h9a, 8'h9c, 8'h9e, 
        8'ha0, 8'ha2, 8'ha4, 8'ha6, 8'ha8, 8'haa, 8'hac, 8'hae, 8'hb0, 8'hb2, 8'hb4, 8'hb6, 8'hb8, 8'hba, 8'hbc, 8'hbe, 
        8'hc0, 8'hc2, 8'hc4, 8'hc6, 8'hc8, 8'hca, 8'hcc, 8'hce, 8'hd0, 8'hd2, 8'hd4, 8'hd6, 8'hd8, 8'hda, 8'hdc, 8'hde, 
        8'he0, 8'he2, 8'he4, 8'he6, 8'he8, 8'hea, 8'hec, 8'hee, 8'hf0, 8'hf2, 8'hf4, 8'hf6, 8'hf8, 8'hfa, 8'hfc, 8'hfe, 
        8'h1b, 8'h19, 8'h1f, 8'h1d, 8'h13, 8'h11, 8'h17, 8'h15, 8'h0b, 8'h09, 8'h0f, 8'h0d, 8'h03, 8'h01, 8'h07, 8'h05, 
        8'h3b, 8'h39, 8'h3f, 8'h3d, 8'h33, 8'h31, 8'h37, 8'h35, 8'h2b, 8'h29, 8'h2f, 8'h2d, 8'h23, 8'h21, 8'h27, 8'h25, 
        8'h5b, 8'h59, 8'h5f, 8'h5d, 8'h53, 8'h51, 8'h57, 8'h55, 8'h4b, 8'h49, 8'h4f, 8'h4d, 8'h43, 8'h41, 8'h47, 8'h45, 
        8'h7b, 8'h79, 8'h7f, 8'h7d, 8'h73, 8'h71, 8'h77, 8'h75, 8'h6b, 8'h69, 8'h6f, 8'h6d, 8'h63, 8'h61, 8'h67, 8'h65, 
        8'h9b, 8'h99, 8'h9f, 8'h9d, 8'h93, 8'h91, 8'h97, 8'h95, 8'h8b, 8'h89, 8'h8f, 8'h8d, 8'h83, 8'h81, 8'h87, 8'h85, 
        8'hbb, 8'hb9, 8'hbf, 8'hbd, 8'hb3, 8'hb1, 8'hb7, 8'hb5, 8'hab, 8'ha9, 8'haf, 8'had, 8'ha3, 8'ha1, 8'ha7, 8'ha5, 
        8'hdb, 8'hd9, 8'hdf, 8'hdd, 8'hd3, 8'hd1, 8'hd7, 8'hd5, 8'hcb, 8'hc9, 8'hcf, 8'hcd, 8'hc3, 8'hc1, 8'hc7, 8'hc5, 
        8'hfb, 8'hf9, 8'hff, 8'hfd, 8'hf3, 8'hf1, 8'hf7, 8'hf5, 8'heb, 8'he9, 8'hef, 8'hed, 8'he3, 8'he1, 8'he7, 8'he5
    };
    
    const bit [0:7] gf_table_3 [256] = {
        8'h00, 8'h03, 8'h06, 8'h05, 8'h0c, 8'h0f, 8'h0a, 8'h09, 8'h18, 8'h1b, 8'h1e, 8'h1d, 8'h14, 8'h17, 8'h12, 8'h11, 
        8'h30, 8'h33, 8'h36, 8'h35, 8'h3c, 8'h3f, 8'h3a, 8'h39, 8'h28, 8'h2b, 8'h2e, 8'h2d, 8'h24, 8'h27, 8'h22, 8'h21, 
        8'h60, 8'h63, 8'h66, 8'h65, 8'h6c, 8'h6f, 8'h6a, 8'h69, 8'h78, 8'h7b, 8'h7e, 8'h7d, 8'h74, 8'h77, 8'h72, 8'h71, 
        8'h50, 8'h53, 8'h56, 8'h55, 8'h5c, 8'h5f, 8'h5a, 8'h59, 8'h48, 8'h4b, 8'h4e, 8'h4d, 8'h44, 8'h47, 8'h42, 8'h41, 
        8'hc0, 8'hc3, 8'hc6, 8'hc5, 8'hcc, 8'hcf, 8'hca, 8'hc9, 8'hd8, 8'hdb, 8'hde, 8'hdd, 8'hd4, 8'hd7, 8'hd2, 8'hd1, 
        8'hf0, 8'hf3, 8'hf6, 8'hf5, 8'hfc, 8'hff, 8'hfa, 8'hf9, 8'he8, 8'heb, 8'hee, 8'hed, 8'he4, 8'he7, 8'he2, 8'he1, 
        8'ha0, 8'ha3, 8'ha6, 8'ha5, 8'hac, 8'haf, 8'haa, 8'ha9, 8'hb8, 8'hbb, 8'hbe, 8'hbd, 8'hb4, 8'hb7, 8'hb2, 8'hb1, 
        8'h90, 8'h93, 8'h96, 8'h95, 8'h9c, 8'h9f, 8'h9a, 8'h99, 8'h88, 8'h8b, 8'h8e, 8'h8d, 8'h84, 8'h87, 8'h82, 8'h81, 
        8'h9b, 8'h98, 8'h9d, 8'h9e, 8'h97, 8'h94, 8'h91, 8'h92, 8'h83, 8'h80, 8'h85, 8'h86, 8'h8f, 8'h8c, 8'h89, 8'h8a, 
        8'hab, 8'ha8, 8'had, 8'hae, 8'ha7, 8'ha4, 8'ha1, 8'ha2, 8'hb3, 8'hb0, 8'hb5, 8'hb6, 8'hbf, 8'hbc, 8'hb9, 8'hba, 
        8'hfb, 8'hf8, 8'hfd, 8'hfe, 8'hf7, 8'hf4, 8'hf1, 8'hf2, 8'he3, 8'he0, 8'he5, 8'he6, 8'hef, 8'hec, 8'he9, 8'hea, 
        8'hcb, 8'hc8, 8'hcd, 8'hce, 8'hc7, 8'hc4, 8'hc1, 8'hc2, 8'hd3, 8'hd0, 8'hd5, 8'hd6, 8'hdf, 8'hdc, 8'hd9, 8'hda, 
        8'h5b, 8'h58, 8'h5d, 8'h5e, 8'h57, 8'h54, 8'h51, 8'h52, 8'h43, 8'h40, 8'h45, 8'h46, 8'h4f, 8'h4c, 8'h49, 8'h4a, 
        8'h6b, 8'h68, 8'h6d, 8'h6e, 8'h67, 8'h64, 8'h61, 8'h62, 8'h73, 8'h70, 8'h75, 8'h76, 8'h7f, 8'h7c, 8'h79, 8'h7a, 
        8'h3b, 8'h38, 8'h3d, 8'h3e, 8'h37, 8'h34, 8'h31, 8'h32, 8'h23, 8'h20, 8'h25, 8'h26, 8'h2f, 8'h2c, 8'h29, 8'h2a, 
        8'h0b, 8'h08, 8'h0d, 8'h0e, 8'h07, 8'h04, 8'h01, 8'h02, 8'h13, 8'h10, 8'h15, 8'h16, 8'h1f, 8'h1c, 8'h19, 8'h1a
    };
   
    const bit [0:7] rcon [256] = {
        8'h8d, 8'h01, 8'h02, 8'h04, 8'h08, 8'h10, 8'h20, 8'h40, 8'h80, 8'h1b, 8'h36, 8'h6c, 8'hd8, 8'hab, 8'h4d, 8'h9a, 
        8'h2f, 8'h5e, 8'hbc, 8'h63, 8'hc6, 8'h97, 8'h35, 8'h6a, 8'hd4, 8'hb3, 8'h7d, 8'hfa, 8'hef, 8'hc5, 8'h91, 8'h39, 
        8'h72, 8'he4, 8'hd3, 8'hbd, 8'h61, 8'hc2, 8'h9f, 8'h25, 8'h4a, 8'h94, 8'h33, 8'h66, 8'hcc, 8'h83, 8'h1d, 8'h3a, 
        8'h74, 8'he8, 8'hcb, 8'h8d, 8'h01, 8'h02, 8'h04, 8'h08, 8'h10, 8'h20, 8'h40, 8'h80, 8'h1b, 8'h36, 8'h6c, 8'hd8, 
        8'hab, 8'h4d, 8'h9a, 8'h2f, 8'h5e, 8'hbc, 8'h63, 8'hc6, 8'h97, 8'h35, 8'h6a, 8'hd4, 8'hb3, 8'h7d, 8'hfa, 8'hef, 
        8'hc5, 8'h91, 8'h39, 8'h72, 8'he4, 8'hd3, 8'hbd, 8'h61, 8'hc2, 8'h9f, 8'h25, 8'h4a, 8'h94, 8'h33, 8'h66, 8'hcc, 
        8'h83, 8'h1d, 8'h3a, 8'h74, 8'he8, 8'hcb, 8'h8d, 8'h01, 8'h02, 8'h04, 8'h08, 8'h10, 8'h20, 8'h40, 8'h80, 8'h1b, 
        8'h36, 8'h6c, 8'hd8, 8'hab, 8'h4d, 8'h9a, 8'h2f, 8'h5e, 8'hbc, 8'h63, 8'hc6, 8'h97, 8'h35, 8'h6a, 8'hd4, 8'hb3, 
        8'h7d, 8'hfa, 8'hef, 8'hc5, 8'h91, 8'h39, 8'h72, 8'he4, 8'hd3, 8'hbd, 8'h61, 8'hc2, 8'h9f, 8'h25, 8'h4a, 8'h94, 
        8'h33, 8'h66, 8'hcc, 8'h83, 8'h1d, 8'h3a, 8'h74, 8'he8, 8'hcb, 8'h8d, 8'h01, 8'h02, 8'h04, 8'h08, 8'h10, 8'h20, 
        8'h40, 8'h80, 8'h1b, 8'h36, 8'h6c, 8'hd8, 8'hab, 8'h4d, 8'h9a, 8'h2f, 8'h5e, 8'hbc, 8'h63, 8'hc6, 8'h97, 8'h35, 
        8'h6a, 8'hd4, 8'hb3, 8'h7d, 8'hfa, 8'hef, 8'hc5, 8'h91, 8'h39, 8'h72, 8'he4, 8'hd3, 8'hbd, 8'h61, 8'hc2, 8'h9f, 
        8'h25, 8'h4a, 8'h94, 8'h33, 8'h66, 8'hcc, 8'h83, 8'h1d, 8'h3a, 8'h74, 8'he8, 8'hcb, 8'h8d, 8'h01, 8'h02, 8'h04, 
        8'h08, 8'h10, 8'h20, 8'h40, 8'h80, 8'h1b, 8'h36, 8'h6c, 8'hd8, 8'hab, 8'h4d, 8'h9a, 8'h2f, 8'h5e, 8'hbc, 8'h63, 
        8'hc6, 8'h97, 8'h35, 8'h6a, 8'hd4, 8'hb3, 8'h7d, 8'hfa, 8'hef, 8'hc5, 8'h91, 8'h39, 8'h72, 8'he4, 8'hd3, 8'hbd, 
        8'h61, 8'hc2, 8'h9f, 8'h25, 8'h4a, 8'h94, 8'h33, 8'h66, 8'hcc, 8'h83, 8'h1d, 8'h3a, 8'h74, 8'he8, 8'hcb, 8'h8d
    };
    
    parameter IV_SIZE           = 96;
    parameter BLOCK_SIZE        = 128;
    parameter PLAIN_TEXT_SIZE   = 128;
    parameter AAD_SIZE          = 128; // Ignoring AAD for now
    parameter TAG_SIZE          = 128;
    parameter AUTH_INPUT_SIZE   = 640; //AAD_SIZE + PLAIN_TEXT_SIZE + 64 + 64 (Ignoring AAD length for now)
    
endpackage

function key_expansion(
    input [0:127] cipher_key
);

    integer i;
    integer j;
    logic [0:31] temp_rot_word;
    logic [0:31] temp_sub_word;
    logic [0:31] temp;
    logic [0:1407] key_schedule;

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
        // $display("RotWord %h | SubWord %h | Rcon %h | After XOR %h | Final %h", temp_rot_word, temp_sub_word, globals::rcon[i/4], temp, key_schedule[32*i+:32]);
    end

    return key_schedule;
endfunction

function logic[0:127] fn_product(
    input [0:127] X,
    input [0:127] Y
);
    logic [0:127] Z;
    logic [0:127] V;
    integer idx;
        
    Z = 128'b0;
    V = Y;
    
    for(idx = 0; idx <= 127; idx++)
    begin
        if (X[idx] == 1'b1)
            Z = Z ^ V;
        
        if (V[127] == 1'b0)
            V = V >> 1;
        else
        begin
            V = V >> 1;
            V = V ^ {8'b11100001, 120'd0};
        end
    end

    return Z;
endfunction

function logic [0:128] fn_aes_encrypt_unroll_stage1(
    input logic [0:127] in_state,
    input logic [0:1407] key_schedule
);
    
    // To store intermediate states
    logic [0:127]    state_0;
    logic [0:127]    state_1;
    logic [0:127]    state_2;
    
    logic [0:127]    mix_column_state_0;
    logic [0:127]    mix_column_state_1;
    logic [0:127]    mix_column_state_2;
    
    
    //$display("--------------------Input--------------------");
    //$display("State: %h", in_state);
    //$display("Round Key Value: %h", globals::key_schedule[0:127]);

    //$display("-------------------- Round 0 --------------------");
    state_0 = in_state ^ key_schedule[0:127]; // Adding the first round key
    //$display("After AddRoundKey %h", state_0);
    
    //$display("-------------------- Round 1 --------------------");
    //$display("State: %h", state_0);

    // Applying SubBytes operation
    state_0[0+:8]   = globals::SBOX[state_0[0+:8]];
    state_0[8+:8]   = globals::SBOX[state_0[8+:8]];
    state_0[16+:8]  = globals::SBOX[state_0[16+:8]];
    state_0[24+:8]  = globals::SBOX[state_0[24+:8]];
    state_0[32+:8]  = globals::SBOX[state_0[32+:8]];
    state_0[40+:8]  = globals::SBOX[state_0[40+:8]];
    state_0[48+:8]  = globals::SBOX[state_0[48+:8]];
    state_0[56+:8]  = globals::SBOX[state_0[56+:8]];
    state_0[64+:8]  = globals::SBOX[state_0[64+:8]];
    state_0[72+:8]  = globals::SBOX[state_0[72+:8]];
    state_0[80+:8]  = globals::SBOX[state_0[80+:8]];
    state_0[88+:8]  = globals::SBOX[state_0[88+:8]];
    state_0[96+:8]  = globals::SBOX[state_0[96+:8]];
    state_0[104+:8] = globals::SBOX[state_0[104+:8]];
    state_0[112+:8] = globals::SBOX[state_0[112+:8]];
    state_0[120+:8] = globals::SBOX[state_0[120+:8]];

    //$display("After SubBytes: %h", state_0);

    // Applying ShiftRows operation on the state_0
    {state_0[(0 * 8)+0 +:8], state_0[(0 * 8)+32 +:8], state_0[(0 * 8)+64 +:8], state_0[(0 * 8)+96 +:8]} =
                        {state_0[(0 * 8)+0 +:8], state_0[(0 * 8)+32 +:8], state_0[(0 * 8)+64 +:8], state_0[(0 * 8)+96 +:8]};
    {state_0[(1 * 8)+0 +:8], state_0[(1 * 8)+32 +:8], state_0[(1 * 8)+64 +:8], state_0[(1 * 8)+96 +:8]} =
                        {state_0[(1 * 8)+32 +:8], state_0[(1 * 8)+64 +:8], state_0[(1 * 8)+96 +:8], state_0[(1 * 8)+0 +:8]};
    {state_0[(2 * 8)+0 +:8], state_0[(2 * 8)+32 +:8], state_0[(2 * 8)+64 +:8], state_0[(2 * 8)+96 +:8]} =
                        {state_0[(2 * 8)+64 +:8], state_0[(2 * 8)+96 +:8], state_0[(2 * 8)+0 +:8], state_0[(2 * 8)+32 +:8]};
    {state_0[(3 * 8)+0 +:8], state_0[(3 * 8)+32 +:8], state_0[(3 * 8)+64 +:8], state_0[(3 * 8)+96 +:8]} =
                        {state_0[(3 * 8)+96 +:8], state_0[(3 * 8)+0 +:8], state_0[(3 * 8)+32 +:8], state_0[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_0);

    // Applying MixColumns operation
    mix_column_state_0[0*32+0  +:8]  = globals::gf_table_2[state_0[0*32+0+:8]] ^ globals::gf_table_3[state_0[0*32+8+:8]] ^ state_0[0*32+16+:8] ^ state_0[0*32+24+:8];
    mix_column_state_0[0*32+8  +:8]  = state_0[0*32+0+:8] ^ globals::gf_table_2[state_0[0*32+8+:8]] ^ globals::gf_table_3[state_0[0*32+16+:8]] ^ state_0[0*32+24+:8];
    mix_column_state_0[0*32+16 +:8]  = state_0[0*32+0+:8] ^ state_0[0*32+8+:8] ^ globals::gf_table_2[state_0[0*32+16+:8]] ^ globals::gf_table_3[state_0[0*32+24+:8]];
    mix_column_state_0[0*32+24 +:8]  = globals::gf_table_3[state_0[0*32+0+:8]] ^ state_0[0*32+8+:8] ^ state_0[0*32+16+:8] ^ globals::gf_table_2[state_0[0*32+24+:8]];

    mix_column_state_0[1*32+0  +:8]  = globals::gf_table_2[state_0[1*32+0+:8]] ^ globals::gf_table_3[state_0[1*32+8+:8]] ^ state_0[1*32+16+:8] ^ state_0[1*32+24+:8];
    mix_column_state_0[1*32+8  +:8]  = state_0[1*32+0+:8] ^ globals::gf_table_2[state_0[1*32+8+:8]] ^ globals::gf_table_3[state_0[1*32+16+:8]] ^ state_0[1*32+24+:8];
    mix_column_state_0[1*32+16 +:8]  = state_0[1*32+0+:8] ^ state_0[1*32+8+:8] ^ globals::gf_table_2[state_0[1*32+16+:8]] ^ globals::gf_table_3[state_0[1*32+24+:8]];
    mix_column_state_0[1*32+24 +:8]  = globals::gf_table_3[state_0[1*32+0+:8]] ^ state_0[1*32+8+:8] ^ state_0[1*32+16+:8] ^ globals::gf_table_2[state_0[1*32+24+:8]];

    mix_column_state_0[2*32+0  +:8]  = globals::gf_table_2[state_0[2*32+0+:8]] ^ globals::gf_table_3[state_0[2*32+8+:8]] ^ state_0[2*32+16+:8] ^ state_0[2*32+24+:8];
    mix_column_state_0[2*32+8  +:8]  = state_0[2*32+0+:8] ^ globals::gf_table_2[state_0[2*32+8+:8]] ^ globals::gf_table_3[state_0[2*32+16+:8]] ^ state_0[2*32+24+:8];
    mix_column_state_0[2*32+16 +:8]  = state_0[2*32+0+:8] ^ state_0[2*32+8+:8] ^ globals::gf_table_2[state_0[2*32+16+:8]] ^ globals::gf_table_3[state_0[2*32+24+:8]];
    mix_column_state_0[2*32+24 +:8]  = globals::gf_table_3[state_0[2*32+0+:8]] ^ state_0[2*32+8+:8] ^ state_0[2*32+16+:8] ^ globals::gf_table_2[state_0[2*32+24+:8]];

    mix_column_state_0[3*32+0  +:8]  = globals::gf_table_2[state_0[3*32+0+:8]] ^ globals::gf_table_3[state_0[3*32+8+:8]] ^ state_0[3*32+16+:8] ^ state_0[3*32+24+:8];
    mix_column_state_0[3*32+8  +:8]  = state_0[3*32+0+:8] ^ globals::gf_table_2[state_0[3*32+8+:8]] ^ globals::gf_table_3[state_0[3*32+16+:8]] ^ state_0[3*32+24+:8];
    mix_column_state_0[3*32+16 +:8]  = state_0[3*32+0+:8] ^ state_0[3*32+8+:8] ^ globals::gf_table_2[state_0[3*32+16+:8]] ^ globals::gf_table_3[state_0[3*32+24+:8]];
    mix_column_state_0[3*32+24 +:8]  = globals::gf_table_3[state_0[3*32+0+:8]] ^ state_0[3*32+8+:8] ^ state_0[3*32+16+:8] ^ globals::gf_table_2[state_0[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_0);

    // Applying AddRoundKey operation to the state
    state_1 = mix_column_state_0 ^ key_schedule[1*128 +:128];
    //$display("RoundKey Value %h", globals::key_schedule[1*128 +:128]);
    //$display("After AddRoundKey %h", state_0);

    //$display("-------------------- Round 2 --------------------");
    //$display("State: %h", state_1);

    // Applying SubBytes operation
    state_1[0+:8]   = globals::SBOX[state_1[0+:8]];
    state_1[8+:8]   = globals::SBOX[state_1[8+:8]];
    state_1[16+:8]  = globals::SBOX[state_1[16+:8]];
    state_1[24+:8]  = globals::SBOX[state_1[24+:8]];
    state_1[32+:8]  = globals::SBOX[state_1[32+:8]];
    state_1[40+:8]  = globals::SBOX[state_1[40+:8]];
    state_1[48+:8]  = globals::SBOX[state_1[48+:8]];
    state_1[56+:8]  = globals::SBOX[state_1[56+:8]];
    state_1[64+:8]  = globals::SBOX[state_1[64+:8]];
    state_1[72+:8]  = globals::SBOX[state_1[72+:8]];
    state_1[80+:8]  = globals::SBOX[state_1[80+:8]];
    state_1[88+:8]  = globals::SBOX[state_1[88+:8]];
    state_1[96+:8]  = globals::SBOX[state_1[96+:8]];
    state_1[104+:8] = globals::SBOX[state_1[104+:8]];
    state_1[112+:8] = globals::SBOX[state_1[112+:8]];
    state_1[120+:8] = globals::SBOX[state_1[120+:8]];

    //$display("After SubBytes: %h", state_1);

    // Applying ShiftRows operation on the state_1
    {state_1[(0 * 8)+0 +:8], state_1[(0 * 8)+32 +:8], state_1[(0 * 8)+64 +:8], state_1[(0 * 8)+96 +:8]} =
                        {state_1[(0 * 8)+0 +:8], state_1[(0 * 8)+32 +:8], state_1[(0 * 8)+64 +:8], state_1[(0 * 8)+96 +:8]};
    {state_1[(1 * 8)+0 +:8], state_1[(1 * 8)+32 +:8], state_1[(1 * 8)+64 +:8], state_1[(1 * 8)+96 +:8]} =
                        {state_1[(1 * 8)+32 +:8], state_1[(1 * 8)+64 +:8], state_1[(1 * 8)+96 +:8], state_1[(1 * 8)+0 +:8]};
    {state_1[(2 * 8)+0 +:8], state_1[(2 * 8)+32 +:8], state_1[(2 * 8)+64 +:8], state_1[(2 * 8)+96 +:8]} =
                        {state_1[(2 * 8)+64 +:8], state_1[(2 * 8)+96 +:8], state_1[(2 * 8)+0 +:8], state_1[(2 * 8)+32 +:8]};
    {state_1[(3 * 8)+0 +:8], state_1[(3 * 8)+32 +:8], state_1[(3 * 8)+64 +:8], state_1[(3 * 8)+96 +:8]} =
                        {state_1[(3 * 8)+96 +:8], state_1[(3 * 8)+0 +:8], state_1[(3 * 8)+32 +:8], state_1[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_1);

    // Applying MixColumns operation
    mix_column_state_1[0*32+0  +:8]  = globals::gf_table_2[state_1[0*32+0+:8]] ^ globals::gf_table_3[state_1[0*32+8+:8]] ^ state_1[0*32+16+:8] ^ state_1[0*32+24+:8];
    mix_column_state_1[0*32+8  +:8]  = state_1[0*32+0+:8] ^ globals::gf_table_2[state_1[0*32+8+:8]] ^ globals::gf_table_3[state_1[0*32+16+:8]] ^ state_1[0*32+24+:8];
    mix_column_state_1[0*32+16 +:8]  = state_1[0*32+0+:8] ^ state_1[0*32+8+:8] ^ globals::gf_table_2[state_1[0*32+16+:8]] ^ globals::gf_table_3[state_1[0*32+24+:8]];
    mix_column_state_1[0*32+24 +:8]  = globals::gf_table_3[state_1[0*32+0+:8]] ^ state_1[0*32+8+:8] ^ state_1[0*32+16+:8] ^ globals::gf_table_2[state_1[0*32+24+:8]];

    mix_column_state_1[1*32+0  +:8]  = globals::gf_table_2[state_1[1*32+0+:8]] ^ globals::gf_table_3[state_1[1*32+8+:8]] ^ state_1[1*32+16+:8] ^ state_1[1*32+24+:8];
    mix_column_state_1[1*32+8  +:8]  = state_1[1*32+0+:8] ^ globals::gf_table_2[state_1[1*32+8+:8]] ^ globals::gf_table_3[state_1[1*32+16+:8]] ^ state_1[1*32+24+:8];
    mix_column_state_1[1*32+16 +:8]  = state_1[1*32+0+:8] ^ state_1[1*32+8+:8] ^ globals::gf_table_2[state_1[1*32+16+:8]] ^ globals::gf_table_3[state_1[1*32+24+:8]];
    mix_column_state_1[1*32+24 +:8]  = globals::gf_table_3[state_1[1*32+0+:8]] ^ state_1[1*32+8+:8] ^ state_1[1*32+16+:8] ^ globals::gf_table_2[state_1[1*32+24+:8]];

    mix_column_state_1[2*32+0  +:8]  = globals::gf_table_2[state_1[2*32+0+:8]] ^ globals::gf_table_3[state_1[2*32+8+:8]] ^ state_1[2*32+16+:8] ^ state_1[2*32+24+:8];
    mix_column_state_1[2*32+8  +:8]  = state_1[2*32+0+:8] ^ globals::gf_table_2[state_1[2*32+8+:8]] ^ globals::gf_table_3[state_1[2*32+16+:8]] ^ state_1[2*32+24+:8];
    mix_column_state_1[2*32+16 +:8]  = state_1[2*32+0+:8] ^ state_1[2*32+8+:8] ^ globals::gf_table_2[state_1[2*32+16+:8]] ^ globals::gf_table_3[state_1[2*32+24+:8]];
    mix_column_state_1[2*32+24 +:8]  = globals::gf_table_3[state_1[2*32+0+:8]] ^ state_1[2*32+8+:8] ^ state_1[2*32+16+:8] ^ globals::gf_table_2[state_1[2*32+24+:8]];

    mix_column_state_1[3*32+0  +:8]  = globals::gf_table_2[state_1[3*32+0+:8]] ^ globals::gf_table_3[state_1[3*32+8+:8]] ^ state_1[3*32+16+:8] ^ state_1[3*32+24+:8];
    mix_column_state_1[3*32+8  +:8]  = state_1[3*32+0+:8] ^ globals::gf_table_2[state_1[3*32+8+:8]] ^ globals::gf_table_3[state_1[3*32+16+:8]] ^ state_1[3*32+24+:8];
    mix_column_state_1[3*32+16 +:8]  = state_1[3*32+0+:8] ^ state_1[3*32+8+:8] ^ globals::gf_table_2[state_1[3*32+16+:8]] ^ globals::gf_table_3[state_1[3*32+24+:8]];
    mix_column_state_1[3*32+24 +:8]  = globals::gf_table_3[state_1[3*32+0+:8]] ^ state_1[3*32+8+:8] ^ state_1[3*32+16+:8] ^ globals::gf_table_2[state_1[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_1);

    // Applying AddRoundKey operation to the state
    state_2 = mix_column_state_1 ^ key_schedule[2*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[2*128 +:128]);
    //$display("After AddRoundKey %h", state_2);
    
    return state_2;
endfunction

function logic [0:128] fn_aes_encrypt_unroll_stage2(
    input logic [0:127] in_state_2,
    input logic [0:1407] key_schedule
);

    logic [0:127]    state_2;
    logic [0:127]    state_3;
    logic [0:127]    state_4;

    logic [0:127]    mix_column_state_2;
    logic [0:127]    mix_column_state_3;

    //$display("-------------------- Round 3 --------------------");
    //$display("State: %h", state_2);

    // Applying SubBytes operation
    state_2[0+:8]   = globals::SBOX[in_state_2[0+:8]];
    state_2[8+:8]   = globals::SBOX[in_state_2[8+:8]];
    state_2[16+:8]  = globals::SBOX[in_state_2[16+:8]];
    state_2[24+:8]  = globals::SBOX[in_state_2[24+:8]];
    state_2[32+:8]  = globals::SBOX[in_state_2[32+:8]];
    state_2[40+:8]  = globals::SBOX[in_state_2[40+:8]];
    state_2[48+:8]  = globals::SBOX[in_state_2[48+:8]];
    state_2[56+:8]  = globals::SBOX[in_state_2[56+:8]];
    state_2[64+:8]  = globals::SBOX[in_state_2[64+:8]];
    state_2[72+:8]  = globals::SBOX[in_state_2[72+:8]];
    state_2[80+:8]  = globals::SBOX[in_state_2[80+:8]];
    state_2[88+:8]  = globals::SBOX[in_state_2[88+:8]];
    state_2[96+:8]  = globals::SBOX[in_state_2[96+:8]];
    state_2[104+:8] = globals::SBOX[in_state_2[104+:8]];
    state_2[112+:8] = globals::SBOX[in_state_2[112+:8]];
    state_2[120+:8] = globals::SBOX[in_state_2[120+:8]];

    //$display("After SubBytes: %h", state_2);

    // Applying ShiftRows operation on the state_2
    {state_2[(0 * 8)+0 +:8], state_2[(0 * 8)+32 +:8], state_2[(0 * 8)+64 +:8], state_2[(0 * 8)+96 +:8]} =
                        {state_2[(0 * 8)+0 +:8], state_2[(0 * 8)+32 +:8], state_2[(0 * 8)+64 +:8], state_2[(0 * 8)+96 +:8]};
    {state_2[(1 * 8)+0 +:8], state_2[(1 * 8)+32 +:8], state_2[(1 * 8)+64 +:8], state_2[(1 * 8)+96 +:8]} =
                        {state_2[(1 * 8)+32 +:8], state_2[(1 * 8)+64 +:8], state_2[(1 * 8)+96 +:8], state_2[(1 * 8)+0 +:8]};
    {state_2[(2 * 8)+0 +:8], state_2[(2 * 8)+32 +:8], state_2[(2 * 8)+64 +:8], state_2[(2 * 8)+96 +:8]} =
                        {state_2[(2 * 8)+64 +:8], state_2[(2 * 8)+96 +:8], state_2[(2 * 8)+0 +:8], state_2[(2 * 8)+32 +:8]};
    {state_2[(3 * 8)+0 +:8], state_2[(3 * 8)+32 +:8], state_2[(3 * 8)+64 +:8], state_2[(3 * 8)+96 +:8]} =
                        {state_2[(3 * 8)+96 +:8], state_2[(3 * 8)+0 +:8], state_2[(3 * 8)+32 +:8], state_2[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_2);

    // Applying MixColumns operation
    mix_column_state_2[0*32+0  +:8]  = globals::gf_table_2[state_2[0*32+0+:8]] ^ globals::gf_table_3[state_2[0*32+8+:8]] ^ state_2[0*32+16+:8] ^ state_2[0*32+24+:8];
    mix_column_state_2[0*32+8  +:8]  = state_2[0*32+0+:8] ^ globals::gf_table_2[state_2[0*32+8+:8]] ^ globals::gf_table_3[state_2[0*32+16+:8]] ^ state_2[0*32+24+:8];
    mix_column_state_2[0*32+16 +:8]  = state_2[0*32+0+:8] ^ state_2[0*32+8+:8] ^ globals::gf_table_2[state_2[0*32+16+:8]] ^ globals::gf_table_3[state_2[0*32+24+:8]];
    mix_column_state_2[0*32+24 +:8]  = globals::gf_table_3[state_2[0*32+0+:8]] ^ state_2[0*32+8+:8] ^ state_2[0*32+16+:8] ^ globals::gf_table_2[state_2[0*32+24+:8]];

    mix_column_state_2[1*32+0  +:8]  = globals::gf_table_2[state_2[1*32+0+:8]] ^ globals::gf_table_3[state_2[1*32+8+:8]] ^ state_2[1*32+16+:8] ^ state_2[1*32+24+:8];
    mix_column_state_2[1*32+8  +:8]  = state_2[1*32+0+:8] ^ globals::gf_table_2[state_2[1*32+8+:8]] ^ globals::gf_table_3[state_2[1*32+16+:8]] ^ state_2[1*32+24+:8];
    mix_column_state_2[1*32+16 +:8]  = state_2[1*32+0+:8] ^ state_2[1*32+8+:8] ^ globals::gf_table_2[state_2[1*32+16+:8]] ^ globals::gf_table_3[state_2[1*32+24+:8]];
    mix_column_state_2[1*32+24 +:8]  = globals::gf_table_3[state_2[1*32+0+:8]] ^ state_2[1*32+8+:8] ^ state_2[1*32+16+:8] ^ globals::gf_table_2[state_2[1*32+24+:8]];

    mix_column_state_2[2*32+0  +:8]  = globals::gf_table_2[state_2[2*32+0+:8]] ^ globals::gf_table_3[state_2[2*32+8+:8]] ^ state_2[2*32+16+:8] ^ state_2[2*32+24+:8];
    mix_column_state_2[2*32+8  +:8]  = state_2[2*32+0+:8] ^ globals::gf_table_2[state_2[2*32+8+:8]] ^ globals::gf_table_3[state_2[2*32+16+:8]] ^ state_2[2*32+24+:8];
    mix_column_state_2[2*32+16 +:8]  = state_2[2*32+0+:8] ^ state_2[2*32+8+:8] ^ globals::gf_table_2[state_2[2*32+16+:8]] ^ globals::gf_table_3[state_2[2*32+24+:8]];
    mix_column_state_2[2*32+24 +:8]  = globals::gf_table_3[state_2[2*32+0+:8]] ^ state_2[2*32+8+:8] ^ state_2[2*32+16+:8] ^ globals::gf_table_2[state_2[2*32+24+:8]];

    mix_column_state_2[3*32+0  +:8]  = globals::gf_table_2[state_2[3*32+0+:8]] ^ globals::gf_table_3[state_2[3*32+8+:8]] ^ state_2[3*32+16+:8] ^ state_2[3*32+24+:8];
    mix_column_state_2[3*32+8  +:8]  = state_2[3*32+0+:8] ^ globals::gf_table_2[state_2[3*32+8+:8]] ^ globals::gf_table_3[state_2[3*32+16+:8]] ^ state_2[3*32+24+:8];
    mix_column_state_2[3*32+16 +:8]  = state_2[3*32+0+:8] ^ state_2[3*32+8+:8] ^ globals::gf_table_2[state_2[3*32+16+:8]] ^ globals::gf_table_3[state_2[3*32+24+:8]];
    mix_column_state_2[3*32+24 +:8]  = globals::gf_table_3[state_2[3*32+0+:8]] ^ state_2[3*32+8+:8] ^ state_2[3*32+16+:8] ^ globals::gf_table_2[state_2[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_2);

    // Applying AddRoundKey operation to the state
    state_3 = mix_column_state_2 ^ key_schedule[3*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[3*128 +:128]);
    //$display("After AddRoundKey %h", state_3);

    //$display("-------------------- Round 4 --------------------");
    //$display("State: %h", state_3);

    // Applying SubBytes operation
    state_3[0+:8]   = globals::SBOX[state_3[0+:8]];
    state_3[8+:8]   = globals::SBOX[state_3[8+:8]];
    state_3[16+:8]  = globals::SBOX[state_3[16+:8]];
    state_3[24+:8]  = globals::SBOX[state_3[24+:8]];
    state_3[32+:8]  = globals::SBOX[state_3[32+:8]];
    state_3[40+:8]  = globals::SBOX[state_3[40+:8]];
    state_3[48+:8]  = globals::SBOX[state_3[48+:8]];
    state_3[56+:8]  = globals::SBOX[state_3[56+:8]];
    state_3[64+:8]  = globals::SBOX[state_3[64+:8]];
    state_3[72+:8]  = globals::SBOX[state_3[72+:8]];
    state_3[80+:8]  = globals::SBOX[state_3[80+:8]];
    state_3[88+:8]  = globals::SBOX[state_3[88+:8]];
    state_3[96+:8]  = globals::SBOX[state_3[96+:8]];
    state_3[104+:8] = globals::SBOX[state_3[104+:8]];
    state_3[112+:8] = globals::SBOX[state_3[112+:8]];
    state_3[120+:8] = globals::SBOX[state_3[120+:8]];

    //$display("After SubBytes: %h", state_3);

    // Applying ShiftRows operation on the state_3
    {state_3[(0 * 8)+0 +:8], state_3[(0 * 8)+32 +:8], state_3[(0 * 8)+64 +:8], state_3[(0 * 8)+96 +:8]} =
                        {state_3[(0 * 8)+0 +:8], state_3[(0 * 8)+32 +:8], state_3[(0 * 8)+64 +:8], state_3[(0 * 8)+96 +:8]};
    {state_3[(1 * 8)+0 +:8], state_3[(1 * 8)+32 +:8], state_3[(1 * 8)+64 +:8], state_3[(1 * 8)+96 +:8]} =
                        {state_3[(1 * 8)+32 +:8], state_3[(1 * 8)+64 +:8], state_3[(1 * 8)+96 +:8], state_3[(1 * 8)+0 +:8]};
    {state_3[(2 * 8)+0 +:8], state_3[(2 * 8)+32 +:8], state_3[(2 * 8)+64 +:8], state_3[(2 * 8)+96 +:8]} =
                        {state_3[(2 * 8)+64 +:8], state_3[(2 * 8)+96 +:8], state_3[(2 * 8)+0 +:8], state_3[(2 * 8)+32 +:8]};
    {state_3[(3 * 8)+0 +:8], state_3[(3 * 8)+32 +:8], state_3[(3 * 8)+64 +:8], state_3[(3 * 8)+96 +:8]} =
                        {state_3[(3 * 8)+96 +:8], state_3[(3 * 8)+0 +:8], state_3[(3 * 8)+32 +:8], state_3[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_3);

    // Applying MixColumns operation
    mix_column_state_3[0*32+0  +:8]  = globals::gf_table_2[state_3[0*32+0+:8]] ^ globals::gf_table_3[state_3[0*32+8+:8]] ^ state_3[0*32+16+:8] ^ state_3[0*32+24+:8];
    mix_column_state_3[0*32+8  +:8]  = state_3[0*32+0+:8] ^ globals::gf_table_2[state_3[0*32+8+:8]] ^ globals::gf_table_3[state_3[0*32+16+:8]] ^ state_3[0*32+24+:8];
    mix_column_state_3[0*32+16 +:8]  = state_3[0*32+0+:8] ^ state_3[0*32+8+:8] ^ globals::gf_table_2[state_3[0*32+16+:8]] ^ globals::gf_table_3[state_3[0*32+24+:8]];
    mix_column_state_3[0*32+24 +:8]  = globals::gf_table_3[state_3[0*32+0+:8]] ^ state_3[0*32+8+:8] ^ state_3[0*32+16+:8] ^ globals::gf_table_2[state_3[0*32+24+:8]];

    mix_column_state_3[1*32+0  +:8]  = globals::gf_table_2[state_3[1*32+0+:8]] ^ globals::gf_table_3[state_3[1*32+8+:8]] ^ state_3[1*32+16+:8] ^ state_3[1*32+24+:8];
    mix_column_state_3[1*32+8  +:8]  = state_3[1*32+0+:8] ^ globals::gf_table_2[state_3[1*32+8+:8]] ^ globals::gf_table_3[state_3[1*32+16+:8]] ^ state_3[1*32+24+:8];
    mix_column_state_3[1*32+16 +:8]  = state_3[1*32+0+:8] ^ state_3[1*32+8+:8] ^ globals::gf_table_2[state_3[1*32+16+:8]] ^ globals::gf_table_3[state_3[1*32+24+:8]];
    mix_column_state_3[1*32+24 +:8]  = globals::gf_table_3[state_3[1*32+0+:8]] ^ state_3[1*32+8+:8] ^ state_3[1*32+16+:8] ^ globals::gf_table_2[state_3[1*32+24+:8]];

    mix_column_state_3[2*32+0  +:8]  = globals::gf_table_2[state_3[2*32+0+:8]] ^ globals::gf_table_3[state_3[2*32+8+:8]] ^ state_3[2*32+16+:8] ^ state_3[2*32+24+:8];
    mix_column_state_3[2*32+8  +:8]  = state_3[2*32+0+:8] ^ globals::gf_table_2[state_3[2*32+8+:8]] ^ globals::gf_table_3[state_3[2*32+16+:8]] ^ state_3[2*32+24+:8];
    mix_column_state_3[2*32+16 +:8]  = state_3[2*32+0+:8] ^ state_3[2*32+8+:8] ^ globals::gf_table_2[state_3[2*32+16+:8]] ^ globals::gf_table_3[state_3[2*32+24+:8]];
    mix_column_state_3[2*32+24 +:8]  = globals::gf_table_3[state_3[2*32+0+:8]] ^ state_3[2*32+8+:8] ^ state_3[2*32+16+:8] ^ globals::gf_table_2[state_3[2*32+24+:8]];

    mix_column_state_3[3*32+0  +:8]  = globals::gf_table_2[state_3[3*32+0+:8]] ^ globals::gf_table_3[state_3[3*32+8+:8]] ^ state_3[3*32+16+:8] ^ state_3[3*32+24+:8];
    mix_column_state_3[3*32+8  +:8]  = state_3[3*32+0+:8] ^ globals::gf_table_2[state_3[3*32+8+:8]] ^ globals::gf_table_3[state_3[3*32+16+:8]] ^ state_3[3*32+24+:8];
    mix_column_state_3[3*32+16 +:8]  = state_3[3*32+0+:8] ^ state_3[3*32+8+:8] ^ globals::gf_table_2[state_3[3*32+16+:8]] ^ globals::gf_table_3[state_3[3*32+24+:8]];
    mix_column_state_3[3*32+24 +:8]  = globals::gf_table_3[state_3[3*32+0+:8]] ^ state_3[3*32+8+:8] ^ state_3[3*32+16+:8] ^ globals::gf_table_2[state_3[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_3);

    // Applying AddRoundKey operation to the state
    state_4 = mix_column_state_3 ^ key_schedule[4*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[4*128 +:128]);
    //$display("After AddRoundKey %h", state_4);

    return state_4;
endfunction

function logic [0:128] fn_aes_encrypt_unroll_stage3(
    input logic [0:127] in_state_4,
    input logic [0:1407] key_schedule
);

    logic [0:127]    state_4;
    logic [0:127]    state_5;
    logic [0:127]    state_6;

    logic [0:127]    mix_column_state_4;
    logic [0:127]    mix_column_state_5;


    //$display("-------------------- Round 5 --------------------");
    //$display("State: %h", state_4);

    // Applying SubBytes operation
    state_4[0+:8]   = globals::SBOX[in_state_4[0+:8]];
    state_4[8+:8]   = globals::SBOX[in_state_4[8+:8]];
    state_4[16+:8]  = globals::SBOX[in_state_4[16+:8]];
    state_4[24+:8]  = globals::SBOX[in_state_4[24+:8]];
    state_4[32+:8]  = globals::SBOX[in_state_4[32+:8]];
    state_4[40+:8]  = globals::SBOX[in_state_4[40+:8]];
    state_4[48+:8]  = globals::SBOX[in_state_4[48+:8]];
    state_4[56+:8]  = globals::SBOX[in_state_4[56+:8]];
    state_4[64+:8]  = globals::SBOX[in_state_4[64+:8]];
    state_4[72+:8]  = globals::SBOX[in_state_4[72+:8]];
    state_4[80+:8]  = globals::SBOX[in_state_4[80+:8]];
    state_4[88+:8]  = globals::SBOX[in_state_4[88+:8]];
    state_4[96+:8]  = globals::SBOX[in_state_4[96+:8]];
    state_4[104+:8] = globals::SBOX[in_state_4[104+:8]];
    state_4[112+:8] = globals::SBOX[in_state_4[112+:8]];
    state_4[120+:8] = globals::SBOX[in_state_4[120+:8]];

    //$display("After SubBytes: %h", state_4);

    // Applying ShiftRows operation on the state_4
    {state_4[(0 * 8)+0 +:8], state_4[(0 * 8)+32 +:8], state_4[(0 * 8)+64 +:8], state_4[(0 * 8)+96 +:8]} =
                        {state_4[(0 * 8)+0 +:8], state_4[(0 * 8)+32 +:8], state_4[(0 * 8)+64 +:8], state_4[(0 * 8)+96 +:8]};
    {state_4[(1 * 8)+0 +:8], state_4[(1 * 8)+32 +:8], state_4[(1 * 8)+64 +:8], state_4[(1 * 8)+96 +:8]} =
                        {state_4[(1 * 8)+32 +:8], state_4[(1 * 8)+64 +:8], state_4[(1 * 8)+96 +:8], state_4[(1 * 8)+0 +:8]};
    {state_4[(2 * 8)+0 +:8], state_4[(2 * 8)+32 +:8], state_4[(2 * 8)+64 +:8], state_4[(2 * 8)+96 +:8]} =
                        {state_4[(2 * 8)+64 +:8], state_4[(2 * 8)+96 +:8], state_4[(2 * 8)+0 +:8], state_4[(2 * 8)+32 +:8]};
    {state_4[(3 * 8)+0 +:8], state_4[(3 * 8)+32 +:8], state_4[(3 * 8)+64 +:8], state_4[(3 * 8)+96 +:8]} =
                        {state_4[(3 * 8)+96 +:8], state_4[(3 * 8)+0 +:8], state_4[(3 * 8)+32 +:8], state_4[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_4);

    // Applying MixColumns operation
    mix_column_state_4[0*32+0  +:8]  = globals::gf_table_2[state_4[0*32+0+:8]] ^ globals::gf_table_3[state_4[0*32+8+:8]] ^ state_4[0*32+16+:8] ^ state_4[0*32+24+:8];
    mix_column_state_4[0*32+8  +:8]  = state_4[0*32+0+:8] ^ globals::gf_table_2[state_4[0*32+8+:8]] ^ globals::gf_table_3[state_4[0*32+16+:8]] ^ state_4[0*32+24+:8];
    mix_column_state_4[0*32+16 +:8]  = state_4[0*32+0+:8] ^ state_4[0*32+8+:8] ^ globals::gf_table_2[state_4[0*32+16+:8]] ^ globals::gf_table_3[state_4[0*32+24+:8]];
    mix_column_state_4[0*32+24 +:8]  = globals::gf_table_3[state_4[0*32+0+:8]] ^ state_4[0*32+8+:8] ^ state_4[0*32+16+:8] ^ globals::gf_table_2[state_4[0*32+24+:8]];

    mix_column_state_4[1*32+0  +:8]  = globals::gf_table_2[state_4[1*32+0+:8]] ^ globals::gf_table_3[state_4[1*32+8+:8]] ^ state_4[1*32+16+:8] ^ state_4[1*32+24+:8];
    mix_column_state_4[1*32+8  +:8]  = state_4[1*32+0+:8] ^ globals::gf_table_2[state_4[1*32+8+:8]] ^ globals::gf_table_3[state_4[1*32+16+:8]] ^ state_4[1*32+24+:8];
    mix_column_state_4[1*32+16 +:8]  = state_4[1*32+0+:8] ^ state_4[1*32+8+:8] ^ globals::gf_table_2[state_4[1*32+16+:8]] ^ globals::gf_table_3[state_4[1*32+24+:8]];
    mix_column_state_4[1*32+24 +:8]  = globals::gf_table_3[state_4[1*32+0+:8]] ^ state_4[1*32+8+:8] ^ state_4[1*32+16+:8] ^ globals::gf_table_2[state_4[1*32+24+:8]];

    mix_column_state_4[2*32+0  +:8]  = globals::gf_table_2[state_4[2*32+0+:8]] ^ globals::gf_table_3[state_4[2*32+8+:8]] ^ state_4[2*32+16+:8] ^ state_4[2*32+24+:8];
    mix_column_state_4[2*32+8  +:8]  = state_4[2*32+0+:8] ^ globals::gf_table_2[state_4[2*32+8+:8]] ^ globals::gf_table_3[state_4[2*32+16+:8]] ^ state_4[2*32+24+:8];
    mix_column_state_4[2*32+16 +:8]  = state_4[2*32+0+:8] ^ state_4[2*32+8+:8] ^ globals::gf_table_2[state_4[2*32+16+:8]] ^ globals::gf_table_3[state_4[2*32+24+:8]];
    mix_column_state_4[2*32+24 +:8]  = globals::gf_table_3[state_4[2*32+0+:8]] ^ state_4[2*32+8+:8] ^ state_4[2*32+16+:8] ^ globals::gf_table_2[state_4[2*32+24+:8]];

    mix_column_state_4[3*32+0  +:8]  = globals::gf_table_2[state_4[3*32+0+:8]] ^ globals::gf_table_3[state_4[3*32+8+:8]] ^ state_4[3*32+16+:8] ^ state_4[3*32+24+:8];
    mix_column_state_4[3*32+8  +:8]  = state_4[3*32+0+:8] ^ globals::gf_table_2[state_4[3*32+8+:8]] ^ globals::gf_table_3[state_4[3*32+16+:8]] ^ state_4[3*32+24+:8];
    mix_column_state_4[3*32+16 +:8]  = state_4[3*32+0+:8] ^ state_4[3*32+8+:8] ^ globals::gf_table_2[state_4[3*32+16+:8]] ^ globals::gf_table_3[state_4[3*32+24+:8]];
    mix_column_state_4[3*32+24 +:8]  = globals::gf_table_3[state_4[3*32+0+:8]] ^ state_4[3*32+8+:8] ^ state_4[3*32+16+:8] ^ globals::gf_table_2[state_4[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_4);

    // Applying AddRoundKey operation to the state
    state_5 = mix_column_state_4 ^ key_schedule[5*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[5*128 +:128]);
    //$display("After AddRoundKey %h", state_5);


    //$display("-------------------- Round 6 --------------------");
    //$display("State: %h", state_5);

    // Applying SubBytes operation
    state_5[0+:8]   = globals::SBOX[state_5[0+:8]];
    state_5[8+:8]   = globals::SBOX[state_5[8+:8]];
    state_5[16+:8]  = globals::SBOX[state_5[16+:8]];
    state_5[24+:8]  = globals::SBOX[state_5[24+:8]];
    state_5[32+:8]  = globals::SBOX[state_5[32+:8]];
    state_5[40+:8]  = globals::SBOX[state_5[40+:8]];
    state_5[48+:8]  = globals::SBOX[state_5[48+:8]];
    state_5[56+:8]  = globals::SBOX[state_5[56+:8]];
    state_5[64+:8]  = globals::SBOX[state_5[64+:8]];
    state_5[72+:8]  = globals::SBOX[state_5[72+:8]];
    state_5[80+:8]  = globals::SBOX[state_5[80+:8]];
    state_5[88+:8]  = globals::SBOX[state_5[88+:8]];
    state_5[96+:8]  = globals::SBOX[state_5[96+:8]];
    state_5[104+:8] = globals::SBOX[state_5[104+:8]];
    state_5[112+:8] = globals::SBOX[state_5[112+:8]];
    state_5[120+:8] = globals::SBOX[state_5[120+:8]];

    //$display("After SubBytes: %h", state_5);

    // Applying ShiftRows operation on the state_5
    {state_5[(0 * 8)+0 +:8], state_5[(0 * 8)+32 +:8], state_5[(0 * 8)+64 +:8], state_5[(0 * 8)+96 +:8]} =
                        {state_5[(0 * 8)+0 +:8], state_5[(0 * 8)+32 +:8], state_5[(0 * 8)+64 +:8], state_5[(0 * 8)+96 +:8]};
    {state_5[(1 * 8)+0 +:8], state_5[(1 * 8)+32 +:8], state_5[(1 * 8)+64 +:8], state_5[(1 * 8)+96 +:8]} =
                        {state_5[(1 * 8)+32 +:8], state_5[(1 * 8)+64 +:8], state_5[(1 * 8)+96 +:8], state_5[(1 * 8)+0 +:8]};
    {state_5[(2 * 8)+0 +:8], state_5[(2 * 8)+32 +:8], state_5[(2 * 8)+64 +:8], state_5[(2 * 8)+96 +:8]} =
                        {state_5[(2 * 8)+64 +:8], state_5[(2 * 8)+96 +:8], state_5[(2 * 8)+0 +:8], state_5[(2 * 8)+32 +:8]};
    {state_5[(3 * 8)+0 +:8], state_5[(3 * 8)+32 +:8], state_5[(3 * 8)+64 +:8], state_5[(3 * 8)+96 +:8]} =
                        {state_5[(3 * 8)+96 +:8], state_5[(3 * 8)+0 +:8], state_5[(3 * 8)+32 +:8], state_5[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_5);

    // Applying MixColumns operation
    mix_column_state_5[0*32+0  +:8]  = globals::gf_table_2[state_5[0*32+0+:8]] ^ globals::gf_table_3[state_5[0*32+8+:8]] ^ state_5[0*32+16+:8] ^ state_5[0*32+24+:8];
    mix_column_state_5[0*32+8  +:8]  = state_5[0*32+0+:8] ^ globals::gf_table_2[state_5[0*32+8+:8]] ^ globals::gf_table_3[state_5[0*32+16+:8]] ^ state_5[0*32+24+:8];
    mix_column_state_5[0*32+16 +:8]  = state_5[0*32+0+:8] ^ state_5[0*32+8+:8] ^ globals::gf_table_2[state_5[0*32+16+:8]] ^ globals::gf_table_3[state_5[0*32+24+:8]];
    mix_column_state_5[0*32+24 +:8]  = globals::gf_table_3[state_5[0*32+0+:8]] ^ state_5[0*32+8+:8] ^ state_5[0*32+16+:8] ^ globals::gf_table_2[state_5[0*32+24+:8]];

    mix_column_state_5[1*32+0  +:8]  = globals::gf_table_2[state_5[1*32+0+:8]] ^ globals::gf_table_3[state_5[1*32+8+:8]] ^ state_5[1*32+16+:8] ^ state_5[1*32+24+:8];
    mix_column_state_5[1*32+8  +:8]  = state_5[1*32+0+:8] ^ globals::gf_table_2[state_5[1*32+8+:8]] ^ globals::gf_table_3[state_5[1*32+16+:8]] ^ state_5[1*32+24+:8];
    mix_column_state_5[1*32+16 +:8]  = state_5[1*32+0+:8] ^ state_5[1*32+8+:8] ^ globals::gf_table_2[state_5[1*32+16+:8]] ^ globals::gf_table_3[state_5[1*32+24+:8]];
    mix_column_state_5[1*32+24 +:8]  = globals::gf_table_3[state_5[1*32+0+:8]] ^ state_5[1*32+8+:8] ^ state_5[1*32+16+:8] ^ globals::gf_table_2[state_5[1*32+24+:8]];

    mix_column_state_5[2*32+0  +:8]  = globals::gf_table_2[state_5[2*32+0+:8]] ^ globals::gf_table_3[state_5[2*32+8+:8]] ^ state_5[2*32+16+:8] ^ state_5[2*32+24+:8];
    mix_column_state_5[2*32+8  +:8]  = state_5[2*32+0+:8] ^ globals::gf_table_2[state_5[2*32+8+:8]] ^ globals::gf_table_3[state_5[2*32+16+:8]] ^ state_5[2*32+24+:8];
    mix_column_state_5[2*32+16 +:8]  = state_5[2*32+0+:8] ^ state_5[2*32+8+:8] ^ globals::gf_table_2[state_5[2*32+16+:8]] ^ globals::gf_table_3[state_5[2*32+24+:8]];
    mix_column_state_5[2*32+24 +:8]  = globals::gf_table_3[state_5[2*32+0+:8]] ^ state_5[2*32+8+:8] ^ state_5[2*32+16+:8] ^ globals::gf_table_2[state_5[2*32+24+:8]];

    mix_column_state_5[3*32+0  +:8]  = globals::gf_table_2[state_5[3*32+0+:8]] ^ globals::gf_table_3[state_5[3*32+8+:8]] ^ state_5[3*32+16+:8] ^ state_5[3*32+24+:8];
    mix_column_state_5[3*32+8  +:8]  = state_5[3*32+0+:8] ^ globals::gf_table_2[state_5[3*32+8+:8]] ^ globals::gf_table_3[state_5[3*32+16+:8]] ^ state_5[3*32+24+:8];
    mix_column_state_5[3*32+16 +:8]  = state_5[3*32+0+:8] ^ state_5[3*32+8+:8] ^ globals::gf_table_2[state_5[3*32+16+:8]] ^ globals::gf_table_3[state_5[3*32+24+:8]];
    mix_column_state_5[3*32+24 +:8]  = globals::gf_table_3[state_5[3*32+0+:8]] ^ state_5[3*32+8+:8] ^ state_5[3*32+16+:8] ^ globals::gf_table_2[state_5[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_5);

    // Applying AddRoundKey operation to the state
    state_6 = mix_column_state_5 ^ key_schedule[6*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[6*128 +:128]);
    //$display("After AddRoundKey %h", state_6);

    return state_6;
endfunction

function logic [0:128] fn_aes_encrypt_unroll_stage4(
    input logic [0:127] in_state_6,
    input logic [0:1407] key_schedule
);

    logic [0:127]    state_6;
    logic [0:127]    state_7;
    logic [0:127]    state_8;

    logic [0:127]    mix_column_state_6;
    logic [0:127]    mix_column_state_7;


    //$display("-------------------- Round 7 --------------------");
    //$display("State: %h", state_6);

    // Applying SubBytes operation
    state_6[0+:8]   = globals::SBOX[in_state_6[0+:8]];
    state_6[8+:8]   = globals::SBOX[in_state_6[8+:8]];
    state_6[16+:8]  = globals::SBOX[in_state_6[16+:8]];
    state_6[24+:8]  = globals::SBOX[in_state_6[24+:8]];
    state_6[32+:8]  = globals::SBOX[in_state_6[32+:8]];
    state_6[40+:8]  = globals::SBOX[in_state_6[40+:8]];
    state_6[48+:8]  = globals::SBOX[in_state_6[48+:8]];
    state_6[56+:8]  = globals::SBOX[in_state_6[56+:8]];
    state_6[64+:8]  = globals::SBOX[in_state_6[64+:8]];
    state_6[72+:8]  = globals::SBOX[in_state_6[72+:8]];
    state_6[80+:8]  = globals::SBOX[in_state_6[80+:8]];
    state_6[88+:8]  = globals::SBOX[in_state_6[88+:8]];
    state_6[96+:8]  = globals::SBOX[in_state_6[96+:8]];
    state_6[104+:8] = globals::SBOX[in_state_6[104+:8]];
    state_6[112+:8] = globals::SBOX[in_state_6[112+:8]];
    state_6[120+:8] = globals::SBOX[in_state_6[120+:8]];

    //$display("After SubBytes: %h", state_6);

    // Applying ShiftRows operation on the state_6
    {state_6[(0 * 8)+0 +:8], state_6[(0 * 8)+32 +:8], state_6[(0 * 8)+64 +:8], state_6[(0 * 8)+96 +:8]} =
                        {state_6[(0 * 8)+0 +:8], state_6[(0 * 8)+32 +:8], state_6[(0 * 8)+64 +:8], state_6[(0 * 8)+96 +:8]};
    {state_6[(1 * 8)+0 +:8], state_6[(1 * 8)+32 +:8], state_6[(1 * 8)+64 +:8], state_6[(1 * 8)+96 +:8]} =
                        {state_6[(1 * 8)+32 +:8], state_6[(1 * 8)+64 +:8], state_6[(1 * 8)+96 +:8], state_6[(1 * 8)+0 +:8]};
    {state_6[(2 * 8)+0 +:8], state_6[(2 * 8)+32 +:8], state_6[(2 * 8)+64 +:8], state_6[(2 * 8)+96 +:8]} =
                        {state_6[(2 * 8)+64 +:8], state_6[(2 * 8)+96 +:8], state_6[(2 * 8)+0 +:8], state_6[(2 * 8)+32 +:8]};
    {state_6[(3 * 8)+0 +:8], state_6[(3 * 8)+32 +:8], state_6[(3 * 8)+64 +:8], state_6[(3 * 8)+96 +:8]} =
                        {state_6[(3 * 8)+96 +:8], state_6[(3 * 8)+0 +:8], state_6[(3 * 8)+32 +:8], state_6[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_6);

    // Applying MixColumns operation
    mix_column_state_6[0*32+0  +:8]  = globals::gf_table_2[state_6[0*32+0+:8]] ^ globals::gf_table_3[state_6[0*32+8+:8]] ^ state_6[0*32+16+:8] ^ state_6[0*32+24+:8];
    mix_column_state_6[0*32+8  +:8]  = state_6[0*32+0+:8] ^ globals::gf_table_2[state_6[0*32+8+:8]] ^ globals::gf_table_3[state_6[0*32+16+:8]] ^ state_6[0*32+24+:8];
    mix_column_state_6[0*32+16 +:8]  = state_6[0*32+0+:8] ^ state_6[0*32+8+:8] ^ globals::gf_table_2[state_6[0*32+16+:8]] ^ globals::gf_table_3[state_6[0*32+24+:8]];
    mix_column_state_6[0*32+24 +:8]  = globals::gf_table_3[state_6[0*32+0+:8]] ^ state_6[0*32+8+:8] ^ state_6[0*32+16+:8] ^ globals::gf_table_2[state_6[0*32+24+:8]];

    mix_column_state_6[1*32+0  +:8]  = globals::gf_table_2[state_6[1*32+0+:8]] ^ globals::gf_table_3[state_6[1*32+8+:8]] ^ state_6[1*32+16+:8] ^ state_6[1*32+24+:8];
    mix_column_state_6[1*32+8  +:8]  = state_6[1*32+0+:8] ^ globals::gf_table_2[state_6[1*32+8+:8]] ^ globals::gf_table_3[state_6[1*32+16+:8]] ^ state_6[1*32+24+:8];
    mix_column_state_6[1*32+16 +:8]  = state_6[1*32+0+:8] ^ state_6[1*32+8+:8] ^ globals::gf_table_2[state_6[1*32+16+:8]] ^ globals::gf_table_3[state_6[1*32+24+:8]];
    mix_column_state_6[1*32+24 +:8]  = globals::gf_table_3[state_6[1*32+0+:8]] ^ state_6[1*32+8+:8] ^ state_6[1*32+16+:8] ^ globals::gf_table_2[state_6[1*32+24+:8]];

    mix_column_state_6[2*32+0  +:8]  = globals::gf_table_2[state_6[2*32+0+:8]] ^ globals::gf_table_3[state_6[2*32+8+:8]] ^ state_6[2*32+16+:8] ^ state_6[2*32+24+:8];
    mix_column_state_6[2*32+8  +:8]  = state_6[2*32+0+:8] ^ globals::gf_table_2[state_6[2*32+8+:8]] ^ globals::gf_table_3[state_6[2*32+16+:8]] ^ state_6[2*32+24+:8];
    mix_column_state_6[2*32+16 +:8]  = state_6[2*32+0+:8] ^ state_6[2*32+8+:8] ^ globals::gf_table_2[state_6[2*32+16+:8]] ^ globals::gf_table_3[state_6[2*32+24+:8]];
    mix_column_state_6[2*32+24 +:8]  = globals::gf_table_3[state_6[2*32+0+:8]] ^ state_6[2*32+8+:8] ^ state_6[2*32+16+:8] ^ globals::gf_table_2[state_6[2*32+24+:8]];

    mix_column_state_6[3*32+0  +:8]  = globals::gf_table_2[state_6[3*32+0+:8]] ^ globals::gf_table_3[state_6[3*32+8+:8]] ^ state_6[3*32+16+:8] ^ state_6[3*32+24+:8];
    mix_column_state_6[3*32+8  +:8]  = state_6[3*32+0+:8] ^ globals::gf_table_2[state_6[3*32+8+:8]] ^ globals::gf_table_3[state_6[3*32+16+:8]] ^ state_6[3*32+24+:8];
    mix_column_state_6[3*32+16 +:8]  = state_6[3*32+0+:8] ^ state_6[3*32+8+:8] ^ globals::gf_table_2[state_6[3*32+16+:8]] ^ globals::gf_table_3[state_6[3*32+24+:8]];
    mix_column_state_6[3*32+24 +:8]  = globals::gf_table_3[state_6[3*32+0+:8]] ^ state_6[3*32+8+:8] ^ state_6[3*32+16+:8] ^ globals::gf_table_2[state_6[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_6);

    // Applying AddRoundKey operation to the state
    state_7 = mix_column_state_6 ^ key_schedule[7*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[7*128 +:128]);
    //$display("After AddRoundKey %h", state_7);

    //$display("-------------------- Round 8 --------------------");
    //$display("State: %h", state_7);

    // Applying SubBytes operation
    state_7[0+:8]   = globals::SBOX[state_7[0+:8]];
    state_7[8+:8]   = globals::SBOX[state_7[8+:8]];
    state_7[16+:8]  = globals::SBOX[state_7[16+:8]];
    state_7[24+:8]  = globals::SBOX[state_7[24+:8]];
    state_7[32+:8]  = globals::SBOX[state_7[32+:8]];
    state_7[40+:8]  = globals::SBOX[state_7[40+:8]];
    state_7[48+:8]  = globals::SBOX[state_7[48+:8]];
    state_7[56+:8]  = globals::SBOX[state_7[56+:8]];
    state_7[64+:8]  = globals::SBOX[state_7[64+:8]];
    state_7[72+:8]  = globals::SBOX[state_7[72+:8]];
    state_7[80+:8]  = globals::SBOX[state_7[80+:8]];
    state_7[88+:8]  = globals::SBOX[state_7[88+:8]];
    state_7[96+:8]  = globals::SBOX[state_7[96+:8]];
    state_7[104+:8] = globals::SBOX[state_7[104+:8]];
    state_7[112+:8] = globals::SBOX[state_7[112+:8]];
    state_7[120+:8] = globals::SBOX[state_7[120+:8]];

    //$display("After SubBytes: %h", state_7);

    // Applying ShiftRows operation on the state_7
    {state_7[(0 * 8)+0 +:8], state_7[(0 * 8)+32 +:8], state_7[(0 * 8)+64 +:8], state_7[(0 * 8)+96 +:8]} =
                        {state_7[(0 * 8)+0 +:8], state_7[(0 * 8)+32 +:8], state_7[(0 * 8)+64 +:8], state_7[(0 * 8)+96 +:8]};
    {state_7[(1 * 8)+0 +:8], state_7[(1 * 8)+32 +:8], state_7[(1 * 8)+64 +:8], state_7[(1 * 8)+96 +:8]} =
                        {state_7[(1 * 8)+32 +:8], state_7[(1 * 8)+64 +:8], state_7[(1 * 8)+96 +:8], state_7[(1 * 8)+0 +:8]};
    {state_7[(2 * 8)+0 +:8], state_7[(2 * 8)+32 +:8], state_7[(2 * 8)+64 +:8], state_7[(2 * 8)+96 +:8]} =
                        {state_7[(2 * 8)+64 +:8], state_7[(2 * 8)+96 +:8], state_7[(2 * 8)+0 +:8], state_7[(2 * 8)+32 +:8]};
    {state_7[(3 * 8)+0 +:8], state_7[(3 * 8)+32 +:8], state_7[(3 * 8)+64 +:8], state_7[(3 * 8)+96 +:8]} =
                        {state_7[(3 * 8)+96 +:8], state_7[(3 * 8)+0 +:8], state_7[(3 * 8)+32 +:8], state_7[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_7);

    // Applying MixColumns operation
    mix_column_state_7[0*32+0  +:8]  = globals::gf_table_2[state_7[0*32+0+:8]] ^ globals::gf_table_3[state_7[0*32+8+:8]] ^ state_7[0*32+16+:8] ^ state_7[0*32+24+:8];
    mix_column_state_7[0*32+8  +:8]  = state_7[0*32+0+:8] ^ globals::gf_table_2[state_7[0*32+8+:8]] ^ globals::gf_table_3[state_7[0*32+16+:8]] ^ state_7[0*32+24+:8];
    mix_column_state_7[0*32+16 +:8]  = state_7[0*32+0+:8] ^ state_7[0*32+8+:8] ^ globals::gf_table_2[state_7[0*32+16+:8]] ^ globals::gf_table_3[state_7[0*32+24+:8]];
    mix_column_state_7[0*32+24 +:8]  = globals::gf_table_3[state_7[0*32+0+:8]] ^ state_7[0*32+8+:8] ^ state_7[0*32+16+:8] ^ globals::gf_table_2[state_7[0*32+24+:8]];

    mix_column_state_7[1*32+0  +:8]  = globals::gf_table_2[state_7[1*32+0+:8]] ^ globals::gf_table_3[state_7[1*32+8+:8]] ^ state_7[1*32+16+:8] ^ state_7[1*32+24+:8];
    mix_column_state_7[1*32+8  +:8]  = state_7[1*32+0+:8] ^ globals::gf_table_2[state_7[1*32+8+:8]] ^ globals::gf_table_3[state_7[1*32+16+:8]] ^ state_7[1*32+24+:8];
    mix_column_state_7[1*32+16 +:8]  = state_7[1*32+0+:8] ^ state_7[1*32+8+:8] ^ globals::gf_table_2[state_7[1*32+16+:8]] ^ globals::gf_table_3[state_7[1*32+24+:8]];
    mix_column_state_7[1*32+24 +:8]  = globals::gf_table_3[state_7[1*32+0+:8]] ^ state_7[1*32+8+:8] ^ state_7[1*32+16+:8] ^ globals::gf_table_2[state_7[1*32+24+:8]];

    mix_column_state_7[2*32+0  +:8]  = globals::gf_table_2[state_7[2*32+0+:8]] ^ globals::gf_table_3[state_7[2*32+8+:8]] ^ state_7[2*32+16+:8] ^ state_7[2*32+24+:8];
    mix_column_state_7[2*32+8  +:8]  = state_7[2*32+0+:8] ^ globals::gf_table_2[state_7[2*32+8+:8]] ^ globals::gf_table_3[state_7[2*32+16+:8]] ^ state_7[2*32+24+:8];
    mix_column_state_7[2*32+16 +:8]  = state_7[2*32+0+:8] ^ state_7[2*32+8+:8] ^ globals::gf_table_2[state_7[2*32+16+:8]] ^ globals::gf_table_3[state_7[2*32+24+:8]];
    mix_column_state_7[2*32+24 +:8]  = globals::gf_table_3[state_7[2*32+0+:8]] ^ state_7[2*32+8+:8] ^ state_7[2*32+16+:8] ^ globals::gf_table_2[state_7[2*32+24+:8]];

    mix_column_state_7[3*32+0  +:8]  = globals::gf_table_2[state_7[3*32+0+:8]] ^ globals::gf_table_3[state_7[3*32+8+:8]] ^ state_7[3*32+16+:8] ^ state_7[3*32+24+:8];
    mix_column_state_7[3*32+8  +:8]  = state_7[3*32+0+:8] ^ globals::gf_table_2[state_7[3*32+8+:8]] ^ globals::gf_table_3[state_7[3*32+16+:8]] ^ state_7[3*32+24+:8];
    mix_column_state_7[3*32+16 +:8]  = state_7[3*32+0+:8] ^ state_7[3*32+8+:8] ^ globals::gf_table_2[state_7[3*32+16+:8]] ^ globals::gf_table_3[state_7[3*32+24+:8]];
    mix_column_state_7[3*32+24 +:8]  = globals::gf_table_3[state_7[3*32+0+:8]] ^ state_7[3*32+8+:8] ^ state_7[3*32+16+:8] ^ globals::gf_table_2[state_7[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_7);

    // Applying AddRoundKey operation to the state
    state_8 = mix_column_state_7 ^ key_schedule[8*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[8*128 +:128]);
    //$display("After AddRoundKey %h", state_8);
    return state_8;
endfunction

function logic [0:128] fn_aes_encrypt_unroll_stage5(
    input logic [0:127] in_state_8,
    input logic [0:1407] key_schedule
);

    logic [0:127]    state_8;
    logic [0:127]    state_9;
    logic [0:127]    state_10;

    logic [0:127]    mix_column_state_8;


    //$display("-------------------- Round 9 --------------------");
    //$display("State: %h", state_8);

    // Applying SubBytes operation
    state_8[0+:8]   = globals::SBOX[in_state_8[0+:8]];
    state_8[8+:8]   = globals::SBOX[in_state_8[8+:8]];
    state_8[16+:8]  = globals::SBOX[in_state_8[16+:8]];
    state_8[24+:8]  = globals::SBOX[in_state_8[24+:8]];
    state_8[32+:8]  = globals::SBOX[in_state_8[32+:8]];
    state_8[40+:8]  = globals::SBOX[in_state_8[40+:8]];
    state_8[48+:8]  = globals::SBOX[in_state_8[48+:8]];
    state_8[56+:8]  = globals::SBOX[in_state_8[56+:8]];
    state_8[64+:8]  = globals::SBOX[in_state_8[64+:8]];
    state_8[72+:8]  = globals::SBOX[in_state_8[72+:8]];
    state_8[80+:8]  = globals::SBOX[in_state_8[80+:8]];
    state_8[88+:8]  = globals::SBOX[in_state_8[88+:8]];
    state_8[96+:8]  = globals::SBOX[in_state_8[96+:8]];
    state_8[104+:8] = globals::SBOX[in_state_8[104+:8]];
    state_8[112+:8] = globals::SBOX[in_state_8[112+:8]];
    state_8[120+:8] = globals::SBOX[in_state_8[120+:8]];

    //$display("After SubBytes: %h", state_8);

    // Applying ShiftRows operation on the state_8
    {state_8[(0 * 8)+0 +:8], state_8[(0 * 8)+32 +:8], state_8[(0 * 8)+64 +:8], state_8[(0 * 8)+96 +:8]} =
                        {state_8[(0 * 8)+0 +:8], state_8[(0 * 8)+32 +:8], state_8[(0 * 8)+64 +:8], state_8[(0 * 8)+96 +:8]};
    {state_8[(1 * 8)+0 +:8], state_8[(1 * 8)+32 +:8], state_8[(1 * 8)+64 +:8], state_8[(1 * 8)+96 +:8]} =
                        {state_8[(1 * 8)+32 +:8], state_8[(1 * 8)+64 +:8], state_8[(1 * 8)+96 +:8], state_8[(1 * 8)+0 +:8]};
    {state_8[(2 * 8)+0 +:8], state_8[(2 * 8)+32 +:8], state_8[(2 * 8)+64 +:8], state_8[(2 * 8)+96 +:8]} =
                        {state_8[(2 * 8)+64 +:8], state_8[(2 * 8)+96 +:8], state_8[(2 * 8)+0 +:8], state_8[(2 * 8)+32 +:8]};
    {state_8[(3 * 8)+0 +:8], state_8[(3 * 8)+32 +:8], state_8[(3 * 8)+64 +:8], state_8[(3 * 8)+96 +:8]} =
                        {state_8[(3 * 8)+96 +:8], state_8[(3 * 8)+0 +:8], state_8[(3 * 8)+32 +:8], state_8[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_8);

    // Applying MixColumns operation
    mix_column_state_8[0*32+0  +:8]  = globals::gf_table_2[state_8[0*32+0+:8]] ^ globals::gf_table_3[state_8[0*32+8+:8]] ^ state_8[0*32+16+:8] ^ state_8[0*32+24+:8];
    mix_column_state_8[0*32+8  +:8]  = state_8[0*32+0+:8] ^ globals::gf_table_2[state_8[0*32+8+:8]] ^ globals::gf_table_3[state_8[0*32+16+:8]] ^ state_8[0*32+24+:8];
    mix_column_state_8[0*32+16 +:8]  = state_8[0*32+0+:8] ^ state_8[0*32+8+:8] ^ globals::gf_table_2[state_8[0*32+16+:8]] ^ globals::gf_table_3[state_8[0*32+24+:8]];
    mix_column_state_8[0*32+24 +:8]  = globals::gf_table_3[state_8[0*32+0+:8]] ^ state_8[0*32+8+:8] ^ state_8[0*32+16+:8] ^ globals::gf_table_2[state_8[0*32+24+:8]];

    mix_column_state_8[1*32+0  +:8]  = globals::gf_table_2[state_8[1*32+0+:8]] ^ globals::gf_table_3[state_8[1*32+8+:8]] ^ state_8[1*32+16+:8] ^ state_8[1*32+24+:8];
    mix_column_state_8[1*32+8  +:8]  = state_8[1*32+0+:8] ^ globals::gf_table_2[state_8[1*32+8+:8]] ^ globals::gf_table_3[state_8[1*32+16+:8]] ^ state_8[1*32+24+:8];
    mix_column_state_8[1*32+16 +:8]  = state_8[1*32+0+:8] ^ state_8[1*32+8+:8] ^ globals::gf_table_2[state_8[1*32+16+:8]] ^ globals::gf_table_3[state_8[1*32+24+:8]];
    mix_column_state_8[1*32+24 +:8]  = globals::gf_table_3[state_8[1*32+0+:8]] ^ state_8[1*32+8+:8] ^ state_8[1*32+16+:8] ^ globals::gf_table_2[state_8[1*32+24+:8]];

    mix_column_state_8[2*32+0  +:8]  = globals::gf_table_2[state_8[2*32+0+:8]] ^ globals::gf_table_3[state_8[2*32+8+:8]] ^ state_8[2*32+16+:8] ^ state_8[2*32+24+:8];
    mix_column_state_8[2*32+8  +:8]  = state_8[2*32+0+:8] ^ globals::gf_table_2[state_8[2*32+8+:8]] ^ globals::gf_table_3[state_8[2*32+16+:8]] ^ state_8[2*32+24+:8];
    mix_column_state_8[2*32+16 +:8]  = state_8[2*32+0+:8] ^ state_8[2*32+8+:8] ^ globals::gf_table_2[state_8[2*32+16+:8]] ^ globals::gf_table_3[state_8[2*32+24+:8]];
    mix_column_state_8[2*32+24 +:8]  = globals::gf_table_3[state_8[2*32+0+:8]] ^ state_8[2*32+8+:8] ^ state_8[2*32+16+:8] ^ globals::gf_table_2[state_8[2*32+24+:8]];

    mix_column_state_8[3*32+0  +:8]  = globals::gf_table_2[state_8[3*32+0+:8]] ^ globals::gf_table_3[state_8[3*32+8+:8]] ^ state_8[3*32+16+:8] ^ state_8[3*32+24+:8];
    mix_column_state_8[3*32+8  +:8]  = state_8[3*32+0+:8] ^ globals::gf_table_2[state_8[3*32+8+:8]] ^ globals::gf_table_3[state_8[3*32+16+:8]] ^ state_8[3*32+24+:8];
    mix_column_state_8[3*32+16 +:8]  = state_8[3*32+0+:8] ^ state_8[3*32+8+:8] ^ globals::gf_table_2[state_8[3*32+16+:8]] ^ globals::gf_table_3[state_8[3*32+24+:8]];
    mix_column_state_8[3*32+24 +:8]  = globals::gf_table_3[state_8[3*32+0+:8]] ^ state_8[3*32+8+:8] ^ state_8[3*32+16+:8] ^ globals::gf_table_2[state_8[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_8);

    // Applying AddRoundKey operation to the state
    state_9 = mix_column_state_8 ^ key_schedule[9*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[9*128 +:128]);
    //$display("After AddRoundKey %h", state_9);

    //$display("-------------------- Round 10 --------------------");
    //$display("State: %h", state_9);

    // Applying SubBytes operation
    state_9[0+:8]   = globals::SBOX[state_9[0+:8]];
    state_9[8+:8]   = globals::SBOX[state_9[8+:8]];
    state_9[16+:8]  = globals::SBOX[state_9[16+:8]];
    state_9[24+:8]  = globals::SBOX[state_9[24+:8]];
    state_9[32+:8]  = globals::SBOX[state_9[32+:8]];
    state_9[40+:8]  = globals::SBOX[state_9[40+:8]];
    state_9[48+:8]  = globals::SBOX[state_9[48+:8]];
    state_9[56+:8]  = globals::SBOX[state_9[56+:8]];
    state_9[64+:8]  = globals::SBOX[state_9[64+:8]];
    state_9[72+:8]  = globals::SBOX[state_9[72+:8]];
    state_9[80+:8]  = globals::SBOX[state_9[80+:8]];
    state_9[88+:8]  = globals::SBOX[state_9[88+:8]];
    state_9[96+:8]  = globals::SBOX[state_9[96+:8]];
    state_9[104+:8] = globals::SBOX[state_9[104+:8]];
    state_9[112+:8] = globals::SBOX[state_9[112+:8]];
    state_9[120+:8] = globals::SBOX[state_9[120+:8]];

    //$display("After SubBytes: %h", state_9);

    // Applying ShiftRows operation on the state_9
    {state_9[(0 * 8)+0 +:8], state_9[(0 * 8)+32 +:8], state_9[(0 * 8)+64 +:8], state_9[(0 * 8)+96 +:8]} =
                        {state_9[(0 * 8)+0 +:8], state_9[(0 * 8)+32 +:8], state_9[(0 * 8)+64 +:8], state_9[(0 * 8)+96 +:8]};
    {state_9[(1 * 8)+0 +:8], state_9[(1 * 8)+32 +:8], state_9[(1 * 8)+64 +:8], state_9[(1 * 8)+96 +:8]} =
                        {state_9[(1 * 8)+32 +:8], state_9[(1 * 8)+64 +:8], state_9[(1 * 8)+96 +:8], state_9[(1 * 8)+0 +:8]};
    {state_9[(2 * 8)+0 +:8], state_9[(2 * 8)+32 +:8], state_9[(2 * 8)+64 +:8], state_9[(2 * 8)+96 +:8]} =
                        {state_9[(2 * 8)+64 +:8], state_9[(2 * 8)+96 +:8], state_9[(2 * 8)+0 +:8], state_9[(2 * 8)+32 +:8]};
    {state_9[(3 * 8)+0 +:8], state_9[(3 * 8)+32 +:8], state_9[(3 * 8)+64 +:8], state_9[(3 * 8)+96 +:8]} =
                        {state_9[(3 * 8)+96 +:8], state_9[(3 * 8)+0 +:8], state_9[(3 * 8)+32 +:8], state_9[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_9);

    // Applying AddRoundKey operation to the state
    state_10 = state_9 ^ key_schedule[10*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[10*128 +:128]);
    //$display("After AddRoundKey %h", state_10);
    
    return state_10;
endfunction

module gcm_aes(
        clk,
        i_reset,
        i_new_instance,
        i_iv,
        i_cipher_key,
        i_plain_text,
        i_aad,
        o_cipher_text,
        o_tag,
        o_tag_ready
    );

    input   clk;
    input   i_reset;
    input   i_new_instance;    
    
    input  [0:globals::IV_SIZE - 1]           i_iv;
    input  [0:globals::PLAIN_TEXT_SIZE - 1]   i_plain_text; 
    input  [0:globals::AAD_SIZE - 1]          i_aad;
    input  [0:127]                            i_cipher_key;    

    /*
    input  [0:5]        i_iv;
    input  [0:4]        i_plain_text; 
    input  [0:4]        i_aad;
    */ 
    
    output reg [0:globals::PLAIN_TEXT_SIZE - 1]   o_cipher_text;
    output reg [0:globals::TAG_SIZE - 1]          o_tag;
    output reg                                    o_tag_ready;
    
    /* Pipeline registers (grouped by stages) */
    logic                                   r_s0_new_instance;
    logic [0:globals::IV_SIZE - 1]          r_s0_iv;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s0_plain_text;
    logic [0:globals::AAD_SIZE - 1]         r_s0_aad;
    logic [0:127]                           r_s0_cipher_key;
    logic [0:1407]                          r_s0_key_schedule;

    logic                                   r_s1_new_instance;
    logic [0:globals::IV_SIZE - 1]          r_s1_iv;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s1_plain_text;
    logic [0:globals::AAD_SIZE - 1]         r_s1_aad;
    logic [0:1407]                          r_s1_key_schedule;

    logic                                   r_s2_new_instance;
    logic [0:globals::IV_SIZE - 1]          r_s2_iv;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s2_plain_text;
    logic [0:globals::AAD_SIZE - 1]         r_s2_aad;
    logic [0:127]                           r_s2_j0;
    logic [0:127]                           r_s2_h;
    logic [0:127]                           r_s2_cb;
    logic [0:1407]                          r_s2_key_schedule;

    logic                                   r_s3_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s3_plain_text;
    logic [0:globals::AAD_SIZE - 1]         r_s3_aad;
    logic [0:127]                           r_s3_h;
    logic [0:127]                           r_s3_encrypted_j0;
    logic [0:127]                           r_s3_encrypted_cb;
    logic [0:1407]                          r_s3_key_schedule;

    logic                                   r_s4_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s4_plain_text;
    logic [0:globals::AAD_SIZE - 1]         r_s4_aad;
    logic [0:127]                           r_s4_h;
    logic [0:127]                           r_s4_encrypted_j0;
    logic [0:127]                           r_s4_encrypted_cb;
    logic [0:1407]                          r_s4_key_schedule;

    logic                                   r_s5_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s5_plain_text;
    logic [0:globals::AAD_SIZE - 1]         r_s5_aad;
    logic [0:127]                           r_s5_h;
    logic [0:127]                           r_s5_encrypted_j0;
    logic [0:127]                           r_s5_encrypted_cb;
    logic [0:1407]                          r_s5_key_schedule;

    logic                                   r_s6_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s6_plain_text;
    logic [0:globals::AAD_SIZE - 1]         r_s6_aad;
    logic [0:127]                           r_s6_h;
    logic [0:127]                           r_s6_encrypted_j0;
    logic [0:127]                           r_s6_encrypted_cb;
    logic [0:1407]                          r_s6_key_schedule;

    logic                                   r_s7_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s7_cipher_text;
    logic [0:127]                           r_s7_h;
    logic [0:127]                           r_s7_encrypted_j0;
    logic [0:3]                             r_s7_counter;
    logic [0:127]                           r_s7_sblock;


    /* Wires within a pipeline stage (grouped by stages) */
    logic                                   w_s0_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s0_plain_text;
    logic [0:127]                           w_s0_iv;
    logic [0:1407]                          w_s0_key_schedule;
    //logic [0:globals::AAD_SIZE - 1]         w_s1_aad;

    logic                                   w_s1_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s1_plain_text;
    logic [0:127]                           w_s1_iv;
    logic [0:127]                           w_s1_h;
    //logic [0:globals::AAD_SIZE - 1]         w_s1_aad;
    logic [0:127]                           w_s1_j0;
    logic [0:1407]                          w_s1_key_schedule;

    logic                                   w_s2_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s2_plain_text;
    logic [0:127]                           w_s2_h;
    logic [0:127]                           w_s2_cb;
    //logic [0:globals::AAD_SIZE - 1]         w_s2_aad;
    logic [0:127]                           w_s2_encrypted_j0;
    logic [0:127]                           w_s2_encrypted_cb;
    logic [0:1407]                          w_s2_key_schedule;

    logic                                   w_s3_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s3_plain_text;
    logic [0:127]                           w_s3_h;
    //logic [0:globals::AAD_SIZE - 1]         w_s3_aad;
    logic [0:127]                           w_s3_encrypted_j0;
    logic [0:127]                           w_s3_encrypted_cb;
    logic [0:1407]                          w_s3_key_schedule;

    logic                                   w_s4_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s4_plain_text;
    logic [0:127]                           w_s4_h;
    //logic [0:globals::AAD_SIZE - 1]         w_s4_aad;
    logic [0:127]                           w_s4_encrypted_j0;
    logic [0:127]                           w_s4_encrypted_cb;
    logic [0:1407]                          w_s4_key_schedule;

    logic                                   w_s5_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s5_plain_text;
    logic [0:127]                           w_s5_h;
    //logic [0:globals::AAD_SIZE - 1]         w_s5_aad;
    logic [0:127]                           w_s5_encrypted_j0;
    logic [0:127]                           w_s5_encrypted_cb;
    logic [0:1407]                          w_s5_key_schedule;

    logic                                   w_s6_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s6_plain_text;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s6_cipher_text;
    logic [0:127]                           w_s6_h;
    //logic [0:globals::AAD_SIZE - 1]         w_s6_aad;
    logic [0:127]                           w_s6_encrypted_j0;
    logic [0:127]                           w_s6_encrypted_cb;

    logic [0:3]                             w_s7_counter;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s7_cipher_text;
    logic [0:127]                           w_s7_sblock;
    logic [0:127]                           w_s7_pre_tag;
    logic [0:127]                           w_s7_auth_input;
    logic [0:globals::TAG_SIZE - 1]         w_s7_tag;
    logic                                   w_s7_tag_ready;

    int i;
    // Following variables have the same meaning as in the NIST document
    int n;
    int m;
    int s; 
    
    /* Creating instances of AES stages */
    module aes_encrypt_stage aes_encrypt_stage1(
    always_ff @(posedge clk)
    begin
        /* Latch inputs */
        r_s0_iv             <= i_iv;
        r_s0_plain_text     <= i_plain_text;
        r_s0_new_instance   <= i_new_instance;
        r_s0_cipher_key     <= i_cipher_key;
        //r_s1_aad          <= i_aad;
        r_s0_key_schedule   <= w_s0_key_schedule;

        /* Latch Stage 0 */
        r_s1_iv             <= w_s0_iv;
        r_s1_plain_text     <= w_s0_plain_text;
        r_s1_new_instance   <= w_s0_new_instance;
        //r_s1_aad          <= w_s0_aad;
        r_s1_key_schedule   <= w_s0_key_schedule;
        
        /* Latch State 1 outputs */
        r_s2_plain_text     <= w_s1_plain_text; 
        //r_s2_aad          <= w_s1_aad;
        r_s2_iv             <= w_s1_iv;
        r_s2_h              <= w_s1_h;
        r_s2_new_instance   <= w_s1_new_instance;
        r_s2_j0             <= w_s1_j0;
        r_s2_key_schedule   <= w_s1_key_schedule;
        
        /* Latch Stage 2 outputs */
        r_s3_new_instance   <= w_s2_new_instance;
        //r_s3_aad          <= w_s2_aad;
        r_s3_plain_text     <= w_s2_plain_text;
        r_s3_h              <= w_s2_h;
        r_s2_cb             <= w_s2_cb;
        r_s3_encrypted_cb   <= w_s2_encrypted_cb;
        r_s3_encrypted_j0   <= w_s2_encrypted_j0;
        r_s3_key_schedule   <= w_s2_key_schedule;

        /* Latch Stage 3 outputs */
        r_s4_new_instance   <= w_s3_new_instance;
        //r_s4_aad          <= w_s3_aad;
        r_s4_plain_text     <= w_s3_plain_text;
        r_s4_h              <= w_s3_h;
        r_s4_encrypted_cb   <= w_s3_encrypted_cb;
        r_s4_encrypted_j0   <= w_s3_encrypted_j0;
        r_s4_key_schedule   <= w_s3_key_schedule;

        /* Latch Stage 4 outputs */
        r_s5_new_instance   <= w_s4_new_instance;
        //r_s5_aad          <= w_s4_aad;
        r_s5_plain_text     <= w_s4_plain_text;
        r_s5_h              <= w_s4_h;
        r_s5_encrypted_cb   <= w_s4_encrypted_cb;
        r_s5_encrypted_j0   <= w_s4_encrypted_j0;
        r_s5_key_schedule   <= w_s4_key_schedule;

        /* Latch Stage 5 outputs */
        r_s6_new_instance   <= w_s5_new_instance;
        //r_s6_aad          <= w_s5_aad;
        r_s6_plain_text     <= w_s5_plain_text;
        r_s6_h              <= w_s5_h;
        r_s6_encrypted_cb   <= w_s5_encrypted_cb;
        r_s6_encrypted_j0   <= w_s5_encrypted_j0;
        r_s6_key_schedule   <= w_s5_key_schedule;

        /* Latch Stage 6 outputs */
        r_s7_new_instance   <= w_s6_new_instance;
        r_s7_h              <= w_s6_h;
        r_s7_cipher_text    <= w_s6_cipher_text;
        r_s7_encrypted_j0   <= w_s6_encrypted_j0;

        /* Latch Stage 7 outputs */
        r_s7_counter        <= w_s7_counter; // Cycle
        r_s7_sblock         <= w_s7_sblock; // Cycle

        /* Latch final outputs */
        o_tag               <= w_s7_tag;
        o_tag_ready         <= w_s7_tag_ready;
        o_cipher_text       <= w_s7_cipher_text;
    end
    
    //Helper variables
    
    always_comb
    begin
        /* ------------------ PIPELINE STAGE - 0 [BEGIN] ------------------*/
        $display("Stage 0 - START");
        w_s0_key_schedule = key_expansion(r_s0_cipher_key);

        /* Carrying forward register values for subsequent stages */
        w_s0_plain_text = r_s0_plain_text;
        //w_s0_aad = r_s0_aad;
        w_s0_new_instance = r_s0_new_instance;
        w_s0_iv = r_s0_iv;
        $display("Stage 0 - END");
        /* ------------------ PIPELINE STAGE - 0 [END] ------------------*/
        
        /* ------------------ PIPELINE STAGE - 1 [BEGIN] ------------------*/
        $display("Stage 1 - START");

        /* Step 1 - Start computing H value */
        w_s1_h = fn_aes_encrypt_unroll_stage1(128'd0, r_s1_key_schedule);
        
        //Step 2 - Compute J_0
        w_s1_j0 = {r_s1_iv, 32'd1};
        $display("\t\tJ_0: %h", w_s1_j0);
        $display("\t\tIV: %h", r_s1_iv);

        /* Carrying forward register values for subsequent stages */
        w_s1_plain_text = r_s1_plain_text;
        //w_s1_aad = r_s1_aad;
        w_s1_new_instance = r_s1_new_instance;
        $display("Stage 1 - END");
        /*------------------ PIPELINE STAGE - 1 [END] ------------------*/

        /*------------------ PIPELINE STAGE - 2 [BEGIN] ------------------*/
        $display("Stage 2 - START");
        w_s2_h = fn_aes_encrypt_unroll_stage2(r_s2_h, r_s2_key_schedule);
        
        /* Start computing CIPH(J0) for step 3 */
        if (r_s2_new_instance == 1)
            w_s2_cb = {r_s2_j0[0:95], r_s2_j0[96:127] + 1'b1};
        else
            w_s2_cb = {r_s2_cb[0:95], r_s2_cb[96:127] + 1'b1};

        w_s2_encrypted_cb = fn_aes_encrypt_unroll_stage1(w_s2_cb, r_s2_key_schedule);

        /* Compute encrypted value of J0 that will be used later in
        * stage 7
        */
        w_s2_encrypted_j0 = fn_aes_encrypt_unroll_stage1(r_s2_j0, r_s2_key_schedule);

        /* Carrying forward register values for subsequent stages */
        w_s2_plain_text = r_s2_plain_text;
        $display("\t\tPLAIN TEXT: %h", r_s2_plain_text);
        //w_s2_aad = r_s2_aad;
        w_s2_new_instance = r_s2_new_instance;
        $display("Stage 2 - END");
        /*------------------ PIPELINE STAGE - 2 [END] ------------------*/

        /*------------------ PIPELINE STAGE - 3 [START] ------------------*/
        $display("Stage 3 - START");
        w_s3_h = fn_aes_encrypt_unroll_stage3(r_s3_h, r_s3_key_schedule);
        w_s3_encrypted_cb = fn_aes_encrypt_unroll_stage2(r_s3_encrypted_cb, r_s3_key_schedule);
        w_s3_encrypted_j0 = fn_aes_encrypt_unroll_stage2(r_s3_encrypted_j0, r_s3_key_schedule);

        /* Carrying forward register values for subsequent stages */
        w_s3_plain_text = r_s3_plain_text;
        //w_s3_aad = r_s3_aad;
        w_s3_new_instance = r_s3_new_instance;
        $display("\t\tPLAIN TEXT: %h", r_s3_plain_text);
        $display("Stage 3 - END");
        /*------------------ PIPELINE STAGE - 3 [END] ------------------*/

        /*------------------ PIPELINE STAGE - 4 [START] ------------------*/
        $display("Stage 4 - START");
        w_s4_h = fn_aes_encrypt_unroll_stage4(r_s4_h, r_s4_key_schedule);
        w_s4_encrypted_cb = fn_aes_encrypt_unroll_stage3(r_s4_encrypted_cb, r_s4_key_schedule);
        w_s4_encrypted_j0 = fn_aes_encrypt_unroll_stage3(r_s4_encrypted_j0, r_s4_key_schedule);

        /* Carrying forward register values for subsequent stages */
        w_s4_plain_text = r_s4_plain_text;
        //w_s4_aad = r_s4_aad;
        w_s4_new_instance = r_s4_new_instance;
        $display("\t\tPLAIN TEXT: %h", r_s4_plain_text);
        $display("Stage 4 - END");
        /*------------------ PIPELINE STAGE - 4 [END] ------------------*/

        /*------------------ PIPELINE STAGE - 5 [START] ------------------*/
        $display("Stage 5 - START");
        w_s5_h = fn_aes_encrypt_unroll_stage5(r_s5_h, r_s5_key_schedule);
        w_s5_encrypted_cb = fn_aes_encrypt_unroll_stage4(r_s5_encrypted_cb, r_s5_key_schedule);
        w_s5_encrypted_j0 = fn_aes_encrypt_unroll_stage4(r_s5_encrypted_j0, r_s5_key_schedule);

        /* Carrying forward register values for subsequent stages */
        w_s5_plain_text = r_s5_plain_text;
        //w_s5_aad = r_s5_aad;
        w_s5_new_instance = r_s5_new_instance;
        $display("\t\tPLAIN TEXT: %h", r_s5_plain_text);
        $display("Stage 5 - END");
        /*------------------ PIPELINE STAGE - 5 [END] ------------------*/

        /*------------------ PIPELINE STAGE - 6 [START] ------------------*/
        $display("Stage 6 - START");
        w_s6_encrypted_cb = fn_aes_encrypt_unroll_stage5(r_s6_encrypted_cb, r_s6_key_schedule);
        w_s6_encrypted_j0 = fn_aes_encrypt_unroll_stage5(r_s6_encrypted_j0, r_s6_key_schedule);
        w_s6_cipher_text = r_s6_plain_text ^ w_s6_encrypted_cb;

        //Step 3b - GCTR operation
                
        $display("\t\tCB: %h", w_s6_encrypted_cb);
        $display("\t\tPT: %h", r_s6_plain_text);

        $display("\t\tEncrypted CB: %h", w_s6_encrypted_cb);
        $display("\t\tCIPHER TEXT: %h", w_s6_cipher_text);

        /* Carrying forward register values for subsequent stages */
        //w_s6_aad = r_s6_aad;
        w_s6_new_instance = r_s6_new_instance;
        w_s6_h = r_s6_h;
        $display("Stage 6 - END");
        /*------------------ PIPELINE STAGE - 6 [END] ------------------*/

        /*------------------ PIPELINE STAGE - 7 [START] ------------------*/
        $display("Stage 7 - START");
      
        /*
        * Step 4 - Computing constants is not necessary since we are assuming
        * the inputs are multiples of 128 (zero padding is done to align the
        * size with 128).
        */
        $display("\t\tNEW INSTANCE: %d", r_s7_new_instance);
        if (r_s7_new_instance == 1)
        begin
            $display("\t\tInitializing S Block");
            w_s7_sblock = 128'd0;
            w_s7_counter = 0;
        end
        else
        begin
            w_s7_sblock = r_s7_sblock;
            w_s7_counter = r_s7_counter + 1;
        end
        

        m = (globals::AUTH_INPUT_SIZE / 128) - 1; // Total blocks minus one

        if (w_s7_counter == m)
        begin
            /* 
            * Following computation is for the previous plain text instance
            * This logic is to accomodate the last 128 bits of zeros in
            * authentication input
            */
            w_s7_auth_input = {64'd0, 64'd512};
            w_s7_tag_ready = 1'b1;
        end
        else
        begin
            w_s7_auth_input = r_s7_cipher_text;
            w_s7_tag_ready = 1'b0;
        end

        w_s7_sblock = (w_s7_sblock ^ w_s7_auth_input);
        w_s7_sblock = fn_product(w_s7_sblock, r_s7_h);
        w_s7_pre_tag = w_s7_sblock ^ r_s7_encrypted_j0;
        w_s7_tag = w_s7_pre_tag[0:globals::TAG_SIZE-1];
    
        $display("\t\tEncrypted J0: %h", r_s7_encrypted_j0);
        $display("\t\tPRE TAG: %h", w_s7_pre_tag);
        $display("\t\tAUTH INPUT: %h", w_s7_auth_input);
        $display("\t\tS: %h", w_s7_sblock);
        $display("\t\tAUTH TAG: %h", w_s7_tag);
        $display("\t\tAUTH TAG READY: %d", w_s7_tag_ready);
        
        w_s7_cipher_text = r_s7_cipher_text;
        
        $display("Stage 7 - END");
        /*------------------ PIPELINE STAGE - 7 [END] ------------------*/
    end
endmodule

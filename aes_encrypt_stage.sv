`timescale 1ns / 1ps

package globals_aes;
    parameter IV_SIZE           = 96;
    parameter BLOCK_SIZE        = 128;
    parameter PLAIN_TEXT_SIZE   = 128;
    parameter AAD_SIZE          = 128; // Ignoring AAD for now
    parameter TAG_SIZE          = 128;
    parameter AUTH_INPUT_SIZE   = 640; //AAD_SIZE + PLAIN_TEXT_SIZE + 64 + 64 (Ignoring AAD length for now)

endpackage

function logic[0:7] fn_gf_multiply2(
    input [0:7] in_byte
);
    logic [0:7] result;
    if (in_byte[0] == 1)
    begin
        result = (in_byte << 1) ^ 7'h1B;
    end
    else
    begin
        result = (in_byte << 1);
    end

    return result;
endfunction

/* Multiplying by 3 is really (2 * x) ^ x
* Refer to this link:
* https://crypto.stackexchange.com/questions/2402/how-to-solve-mixcolumns
*/
function logic[0:7] fn_gf_multiply3(
    input [0:7] in_byte
);
    logic [0:7] result;
    if (in_byte[0] == 1)
    begin
        result = (in_byte << 1) ^ 7'h1B;
    end
    else
    begin
        result = (in_byte << 1);
    end
    result = result ^ in_byte;
    return result;
endfunction

module aes_encrypt_stage(
    in_state,
    key_schedule,
    round,
    o_state
    );
    input logic [0:127]     in_state;
    input logic [0:1407]    key_schedule;
    input logic [0:31]       round;
    output logic [0:127]    o_state;

    logic [0:127]    state_0;
    logic [0:127]    state_1;

    logic [0:127]    mix_column_state_0;
    logic [0:127]    mix_column_state_1;


    always_comb
    begin

        $display("--------------------Input--------------------");
        $display("State: %h", in_state);
        $display("Round Key Value: %h", key_schedule[0:127]);

        $display("-------------------- Round 0 --------------------");

        if (round-1 == 0)
        begin
            state_0 = in_state ^ key_schedule[0:127]; // Adding the first round key
        end
        else
        begin
            state_0 = in_state;
        end

        $display("After AddRoundKey %h", state_0);

        $display("-------------------- Round 1 --------------------");
        $display("State: %h", state_0);

        // Applying SubBytes operation

        state_0[0+:8]   = globals_aes::SBOX[state_0[0+:8]];
        state_0[8+:8]   = globals_aes::SBOX[state_0[8+:8]];
        state_0[16+:8]  = globals_aes::SBOX[state_0[16+:8]];
        state_0[24+:8]  = globals_aes::SBOX[state_0[24+:8]];
        state_0[32+:8]  = globals_aes::SBOX[state_0[32+:8]];
        state_0[40+:8]  = globals_aes::SBOX[state_0[40+:8]];
        state_0[48+:8]  = globals_aes::SBOX[state_0[48+:8]];
        state_0[56+:8]  = globals_aes::SBOX[state_0[56+:8]];
        state_0[64+:8]  = globals_aes::SBOX[state_0[64+:8]];
        state_0[72+:8]  = globals_aes::SBOX[state_0[72+:8]];
        state_0[80+:8]  = globals_aes::SBOX[state_0[80+:8]];
        state_0[88+:8]  = globals_aes::SBOX[state_0[88+:8]];
        state_0[96+:8]  = globals_aes::SBOX[state_0[96+:8]];
        state_0[104+:8] = globals_aes::SBOX[state_0[104+:8]];
        state_0[112+:8] = globals_aes::SBOX[state_0[112+:8]];
        state_0[120+:8] = globals_aes::SBOX[state_0[120+:8]];

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
        mix_column_state_0[0*32+0  +:8]  = fn_gf_multiply2(state_0[0*32+0+:8]) ^ fn_gf_multiply3(state_0[0*32+8+:8]) ^ state_0[0*32+16+:8] ^ state_0[0*32+24+:8];
        mix_column_state_0[0*32+8  +:8]  = state_0[0*32+0+:8] ^ fn_gf_multiply2(state_0[0*32+8+:8]) ^ fn_gf_multiply3(state_0[0*32+16+:8]) ^ state_0[0*32+24+:8];
        mix_column_state_0[0*32+16 +:8]  = state_0[0*32+0+:8] ^ state_0[0*32+8+:8] ^ fn_gf_multiply2(state_0[0*32+16+:8]) ^ fn_gf_multiply3(state_0[0*32+24+:8]);
        mix_column_state_0[0*32+24 +:8]  = fn_gf_multiply3(state_0[0*32+0+:8]) ^ state_0[0*32+8+:8] ^ state_0[0*32+16+:8] ^ fn_gf_multiply2(state_0[0*32+24+:8]);

        mix_column_state_0[1*32+0  +:8]  = fn_gf_multiply2(state_0[1*32+0+:8]) ^ fn_gf_multiply3(state_0[1*32+8+:8]) ^ state_0[1*32+16+:8] ^ state_0[1*32+24+:8];
        mix_column_state_0[1*32+8  +:8]  = state_0[1*32+0+:8] ^ fn_gf_multiply2(state_0[1*32+8+:8]) ^ fn_gf_multiply3(state_0[1*32+16+:8]) ^ state_0[1*32+24+:8];
        mix_column_state_0[1*32+16 +:8]  = state_0[1*32+0+:8] ^ state_0[1*32+8+:8] ^ fn_gf_multiply2(state_0[1*32+16+:8]) ^ fn_gf_multiply3(state_0[1*32+24+:8]);
        mix_column_state_0[1*32+24 +:8]  = fn_gf_multiply3(state_0[1*32+0+:8]) ^ state_0[1*32+8+:8] ^ state_0[1*32+16+:8] ^ fn_gf_multiply2(state_0[1*32+24+:8]);

        mix_column_state_0[2*32+0  +:8]  = fn_gf_multiply2(state_0[2*32+0+:8]) ^ fn_gf_multiply3(state_0[2*32+8+:8]) ^ state_0[2*32+16+:8] ^ state_0[2*32+24+:8];
        mix_column_state_0[2*32+8  +:8]  = state_0[2*32+0+:8] ^ fn_gf_multiply2(state_0[2*32+8+:8]) ^ fn_gf_multiply3(state_0[2*32+16+:8]) ^ state_0[2*32+24+:8];
        mix_column_state_0[2*32+16 +:8]  = state_0[2*32+0+:8] ^ state_0[2*32+8+:8] ^ fn_gf_multiply2(state_0[2*32+16+:8]) ^ fn_gf_multiply3(state_0[2*32+24+:8]);
        mix_column_state_0[2*32+24 +:8]  = fn_gf_multiply3(state_0[2*32+0+:8]) ^ state_0[2*32+8+:8] ^ state_0[2*32+16+:8] ^ fn_gf_multiply2(state_0[2*32+24+:8]);

        mix_column_state_0[3*32+0  +:8]  = fn_gf_multiply2(state_0[3*32+0+:8]) ^ fn_gf_multiply3(state_0[3*32+8+:8]) ^ state_0[3*32+16+:8] ^ state_0[3*32+24+:8];
        mix_column_state_0[3*32+8  +:8]  = state_0[3*32+0+:8] ^ fn_gf_multiply2(state_0[3*32+8+:8]) ^ fn_gf_multiply3(state_0[3*32+16+:8]) ^ state_0[3*32+24+:8];
        mix_column_state_0[3*32+16 +:8]  = state_0[3*32+0+:8] ^ state_0[3*32+8+:8] ^ fn_gf_multiply2(state_0[3*32+16+:8]) ^ fn_gf_multiply3(state_0[3*32+24+:8]);
        mix_column_state_0[3*32+24 +:8]  = fn_gf_multiply3(state_0[3*32+0+:8]) ^ state_0[3*32+8+:8] ^ state_0[3*32+16+:8] ^ fn_gf_multiply2(state_0[3*32+24+:8]);

        //$display("After MixColumns: %h", mix_column_state_0);

        // Applying AddRoundKey operation to the state
        state_1 = mix_column_state_0 ^ key_schedule[(round)*128 +:128];
        //$display("RoundKey Value %h", globals_aes::key_schedule[1*128 +:128]);
        //$display("After AddRoundKey %h", state_0);

        //$display("-------------------- Round 2 --------------------");
        //$display("State: %h", state_1);

        // Applying SubBytes operation
        state_1[0+:8]   = globals_aes::SBOX[state_1[0+:8]];
        state_1[8+:8]   = globals_aes::SBOX[state_1[8+:8]];
        state_1[16+:8]  = globals_aes::SBOX[state_1[16+:8]];
        state_1[24+:8]  = globals_aes::SBOX[state_1[24+:8]];
        state_1[32+:8]  = globals_aes::SBOX[state_1[32+:8]];
        state_1[40+:8]  = globals_aes::SBOX[state_1[40+:8]];
        state_1[48+:8]  = globals_aes::SBOX[state_1[48+:8]];
        state_1[56+:8]  = globals_aes::SBOX[state_1[56+:8]];
        state_1[64+:8]  = globals_aes::SBOX[state_1[64+:8]];
        state_1[72+:8]  = globals_aes::SBOX[state_1[72+:8]];
        state_1[80+:8]  = globals_aes::SBOX[state_1[80+:8]];
        state_1[88+:8]  = globals_aes::SBOX[state_1[88+:8]];
        state_1[96+:8]  = globals_aes::SBOX[state_1[96+:8]];
        state_1[104+:8] = globals_aes::SBOX[state_1[104+:8]];
        state_1[112+:8] = globals_aes::SBOX[state_1[112+:8]];
        state_1[120+:8] = globals_aes::SBOX[state_1[120+:8]];

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
        if ((round + 1) != 10)
        begin
            mix_column_state_1[0*32+0  +:8]  = fn_gf_multiply2(state_1[0*32+0+:8]) ^ fn_gf_multiply3(state_1[0*32+8+:8]) ^ state_1[0*32+16+:8] ^ state_1[0*32+24+:8];
            mix_column_state_1[0*32+8  +:8]  = state_1[0*32+0+:8] ^ fn_gf_multiply2(state_1[0*32+8+:8]) ^ fn_gf_multiply3(state_1[0*32+16+:8]) ^ state_1[0*32+24+:8];
            mix_column_state_1[0*32+16 +:8]  = state_1[0*32+0+:8] ^ state_1[0*32+8+:8] ^ fn_gf_multiply2(state_1[0*32+16+:8]) ^ fn_gf_multiply3(state_1[0*32+24+:8]);
            mix_column_state_1[0*32+24 +:8]  = fn_gf_multiply3(state_1[0*32+0+:8]) ^ state_1[0*32+8+:8] ^ state_1[0*32+16+:8] ^ fn_gf_multiply2(state_1[0*32+24+:8]);

            mix_column_state_1[1*32+0  +:8]  = fn_gf_multiply2(state_1[1*32+0+:8]) ^ fn_gf_multiply3(state_1[1*32+8+:8]) ^ state_1[1*32+16+:8] ^ state_1[1*32+24+:8];
            mix_column_state_1[1*32+8  +:8]  = state_1[1*32+0+:8] ^ fn_gf_multiply2(state_1[1*32+8+:8]) ^ fn_gf_multiply3(state_1[1*32+16+:8]) ^ state_1[1*32+24+:8];
            mix_column_state_1[1*32+16 +:8]  = state_1[1*32+0+:8] ^ state_1[1*32+8+:8] ^ fn_gf_multiply2(state_1[1*32+16+:8]) ^ fn_gf_multiply3(state_1[1*32+24+:8]);
            mix_column_state_1[1*32+24 +:8]  = fn_gf_multiply3(state_1[1*32+0+:8]) ^ state_1[1*32+8+:8] ^ state_1[1*32+16+:8] ^ fn_gf_multiply2(state_1[1*32+24+:8]);

            mix_column_state_1[2*32+0  +:8]  = fn_gf_multiply2(state_1[2*32+0+:8]) ^ fn_gf_multiply3(state_1[2*32+8+:8]) ^ state_1[2*32+16+:8] ^ state_1[2*32+24+:8];
            mix_column_state_1[2*32+8  +:8]  = state_1[2*32+0+:8] ^ fn_gf_multiply2(state_1[2*32+8+:8]) ^ fn_gf_multiply3(state_1[2*32+16+:8]) ^ state_1[2*32+24+:8];
            mix_column_state_1[2*32+16 +:8]  = state_1[2*32+0+:8] ^ state_1[2*32+8+:8] ^ fn_gf_multiply2(state_1[2*32+16+:8]) ^ fn_gf_multiply3(state_1[2*32+24+:8]);
            mix_column_state_1[2*32+24 +:8]  = fn_gf_multiply3(state_1[2*32+0+:8]) ^ state_1[2*32+8+:8] ^ state_1[2*32+16+:8] ^ fn_gf_multiply2(state_1[2*32+24+:8]);

            mix_column_state_1[3*32+0  +:8]  = fn_gf_multiply2(state_1[3*32+0+:8]) ^ fn_gf_multiply3(state_1[3*32+8+:8]) ^ state_1[3*32+16+:8] ^ state_1[3*32+24+:8];
            mix_column_state_1[3*32+8  +:8]  = state_1[3*32+0+:8] ^ fn_gf_multiply2(state_1[3*32+8+:8]) ^ fn_gf_multiply3(state_1[3*32+16+:8]) ^ state_1[3*32+24+:8];
            mix_column_state_1[3*32+16 +:8]  = state_1[3*32+0+:8] ^ state_1[3*32+8+:8] ^ fn_gf_multiply2(state_1[3*32+16+:8]) ^ fn_gf_multiply3(state_1[3*32+24+:8]);
            mix_column_state_1[3*32+24 +:8]  = fn_gf_multiply3(state_1[3*32+0+:8]) ^ state_1[3*32+8+:8] ^ state_1[3*32+16+:8] ^ fn_gf_multiply2(state_1[3*32+24+:8]);
        end
        else
        begin
            mix_column_state_1 = state_1;
        end
        //$display("After MixColumns: %h", mix_column_state_1);

        // Applying AddRoundKey operation to the state
        o_state = mix_column_state_1 ^ key_schedule[(round+1)*128 +:128]; // round*128
        //$display("RoundKey Value %h", globals_aes::key_schedule[2*128 +:128]);
        //$display("After AddRoundKey %h", state_2);
    end
endmodule

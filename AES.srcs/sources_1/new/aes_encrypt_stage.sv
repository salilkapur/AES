module aes_encrypt_stage(
    in_state,
    key_schedule,
    round,
    o_state
    );
    input logic [0:127]     in_state;
    input logic [0:1407]    key_schedule;
    input logic [0:3]       round;
    output logic [0:127]    o_state;

    logic [0:127]    state_0;
    logic [0:127]    state_1;
    
    logic [0:127]    mix_column_state_0;
    logic [0:127]    mix_column_state_1;
    
    
    //$display("--------------------Input--------------------");
    //$display("State: %h", in_state);
    //$display("Round Key Value: %h", globals::key_schedule[0:127]);

    //$display("-------------------- Round 0 --------------------");
    if (round == 0)
    begin
        in_state = in_state ^ key_schedule[0:127]; // Adding the first round key
    end
    //$display("After AddRoundKey %h", state_0);
    
    //$display("-------------------- Round 1 --------------------");
    //$display("State: %h", state_0);

    // Applying SubBytes operation
    state_0[0+:8]   = globals::SBOX[in_state[0+:8]];
    state_0[8+:8]   = globals::SBOX[in_state[8+:8]];
    state_0[16+:8]  = globals::SBOX[in_state[16+:8]];
    state_0[24+:8]  = globals::SBOX[in_state[24+:8]];
    state_0[32+:8]  = globals::SBOX[in_state[32+:8]];
    state_0[40+:8]  = globals::SBOX[in_state[40+:8]];
    state_0[48+:8]  = globals::SBOX[in_state[48+:8]];
    state_0[56+:8]  = globals::SBOX[in_state[56+:8]];
    state_0[64+:8]  = globals::SBOX[in_state[64+:8]];
    state_0[72+:8]  = globals::SBOX[in_state[72+:8]];
    state_0[80+:8]  = globals::SBOX[in_state[80+:8]];
    state_0[88+:8]  = globals::SBOX[in_state[88+:8]];
    state_0[96+:8]  = globals::SBOX[in_state[96+:8]];
    state_0[104+:8] = globals::SBOX[in_state[104+:8]];
    state_0[112+:8] = globals::SBOX[in_state[112+:8]];
    state_0[120+:8] = globals::SBOX[in_state[120+:8]];

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
    state_1 = mix_column_state_0 ^ key_schedule[(round)*128 +:128];
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
    o_state = mix_column_state_1 ^ key_schedule[(round+1)*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[2*128 +:128]);
    //$display("After AddRoundKey %h", state_2);
    
endmodule

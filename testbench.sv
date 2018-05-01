`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2018 12:55:55
// Design Name: 
// Module Name: testbench
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


module testbench(

    );
    reg clk = 1'b0;
    //reg [0:127] cipher_text;
    
    // Encryption Sample Test 1
    /*
    reg [0:127] cipher_key = 128'h2b7e151628aed2a6abf7158809cf4f3c;
    reg [0:127] plain_text = 128'h3243f6a8885a308d313198a2e0370734;
    reg [0:127] cipher_text;
    */
    
    // Encryption Sample Test 2
    /*
    reg [0:127] cipher_key = 128'h000102030405060708090a0b0c0d0e0f;
    reg [0:127] plain_text = 128'h00112233445566778899aabbccddeeff;
    reg [0:127] cipher_text;    
    */
    
    // Decryption Sample Test 1
    /*
    reg [0:127] cipher_text = 128'h69c4e0d86a7b0430d8cdb78070b4c55a;
    reg [0:127] cipher_key = 128'h000102030405060708090a0b0c0d0e0f;
    reg [0:127] plain_text;
    */
    
    //aes aes_top_module(.clk(clk));
    /*
    reg [0:127] cipher_key = 128'hFEFFE9928665731C6D6A8F9467308308;
    reg [0:1407] key_schedule;
 
    // Key expasion module
    key_expansion key_expansion_ut(
                .cipher_key(cipher_key),
                .clk(clk),
                .key_schedule(key_schedule)
    );
    */
    // Encryption module
    /*
    aes_encrypt aes_encrypt_instance(.in(plain_text),
                    .key_schedule(key_schedule),
                    .clk(clk),
                    .out(cipher_text)
    );
    */
    
    //Decryption module
    /*
    aes_decrypt aes_decrypt_instance(.in(cipher_text),
                        .key_schedule(key_schedule),
                        .clk(clk),
                        .out(plain_text)
    );
    */
    
    /*
    gcm_aes gcm_aes_instance(.clk(clk),
                             .i_iv(0),
                             .i_plain_text(0),
                             .i_aad(0),
                             .o_cipher_text(cipher_text),
                             .o_tag(tag)
                             );
    */
    
    
    //GCM Sample Test 1
    reg [0:127] tag;
    reg [0:127] cipher_key = 128'hFEFFE9928665731C6D6A8F9467308308;
    reg [0:95]  iv         = 96'hCAFEBABEFACEDBADDECAF888;
    reg [0:511] plain_text = 512'hD9313225F88406E5A55909C5AFF5269A86A7A9531534F7DA2E4C303D8A318A721C3C0C95956809532FCF0E2449A6B525B16AEDF5AA0DE657BA637B391AAFD255;
    reg [0:511] aad        = 512'h3AD77BB40D7A3660A89ECAF32466EF97F5D3D58503B9699DE785895A96FDBAAF43B1CD7F598ECE23881B00E3ED0306887B0C785E27E8AD3F8223207104725DD4;
    reg [0:511] cipher_text;
    
    //reg [0:511] aad        = 512'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
    //reg [0:511] plain_text = 512'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
    
    //reg [0:5] i_iv = 6'b000000;
    //reg [0:95]  iv = 128'd0;
    //reg [0:4] i_aad = 5'b00000;
    //reg [0:127] aad        = 127'd0;
    //reg [0:4] i_plain_text = 5'b00000;
    //reg [0:127] plain_text = {i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text[0:2]};
    
    reg [0:127] plain_text_block;
    reg [0:127] aad_block;
    reg [0:127] cipher_text_block;
    reg new_instance = 0;
    reg pt_instance = 0;
    reg tag_ready;
    
    gcm_aes gcm_aes_instance(
        .clk(clk),
        .i_new_instance(new_instance),
        .i_pt_instance(pt_instance),
        .i_cipher_key(cipher_key),
        .i_iv(iv),
        .i_plain_text(plain_text_block),
        .i_aad(aad_block),
        .i_plain_text_size(64'd512),
        .i_aad_size(64'd512),
        .o_cipher_text(cipher_text_block),
        .o_tag(tag),
        .o_tag_ready(tag_ready)
    );

    
    reg [0:4] counter;
    
    initial
    begin
        counter = 0;
        //plain_text_block = plain_text[counter*128+:128];
        aad_block = aad[counter*128+:128];
        new_instance = 1;
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        counter = counter + 1;
        //plain_text_block = plain_text[counter*128+:128];
        aad_block = aad[counter*128+:128];
        new_instance = 0;
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        counter = counter + 1;
        //plain_text_block = plain_text[counter*128+:128];
        aad_block = aad[counter*128+:128];
        new_instance = 0;
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        counter = counter + 1;
        //plain_text_block = plain_text[counter*128+:128];
        aad_block = aad[counter*128+:128];
        new_instance = 0;
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        pt_instance = 1;
        counter = 0;
        plain_text_block = plain_text[counter*128+:128];
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        pt_instance = 0;
        counter = counter + 1;
        plain_text_block = plain_text[counter*128+:128];
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        pt_instance = 0;
        counter = counter + 1;
        plain_text_block = plain_text[counter*128+:128];
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        pt_instance = 0;
        counter = counter + 1;
        plain_text_block = plain_text[counter*128+:128];
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        #10 clk = ~clk; // Posedge
        #10 clk = ~clk;
        #10 clk = ~clk; // Posedge
    end
endmodule

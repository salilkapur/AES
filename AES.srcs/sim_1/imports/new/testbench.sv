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
    reg [0:127] cipher_text;
    reg [0:127] tag;
    
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
    // Key expasion module
    key_expansion key_expansion_ut(
                .cipher_key(cipher_key),
                .clk(clk),
                .key_schedule(key_schedule)
    );
    
    // Encryption module
    
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
    
    gcm_aes gcm_aes_instance(.clk(clk),
                             .i_iv(0),
                             .i_plain_text(0),
                             .i_aad(0),
                             .o_cipher_text(cipher_text),
                             .o_tag(tag)
                             );
    initial
    begin       
        #10 clk = ~clk;
        #10 clk = ~clk;
        #10 clk = ~clk;
        #10 clk = ~clk;
        #10 clk = ~clk;
        #10 clk = ~clk;
        #10 clk = ~clk;
        #10 clk = ~clk;
        #10 clk = ~clk;
    end
    /*
    initial
    begin       
        #20 clk = ~clk;
        #20 clk = ~clk;
        #20 clk = ~clk;
        #20 clk = ~clk;
        #20 clk = ~clk;
    end
    */
endmodule
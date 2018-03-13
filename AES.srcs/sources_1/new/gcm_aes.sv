`timescale 1ns / 1ps

module gcm_aes(
        i_cipher_key,
        i_iv,
        i_plain_text,
        i_aad,
        o_cipher_text,
        o_tag
    );

    parameter IV_SIZE           = 96;
    parameter PLAIN_TEXT_SIZE   = 128;
    parameter CIPHER_KEY_SIZE   = 128;
    parameter AAD_SIZE          = 128;
    parameter TAG_SIZE          = 128;

    input  [0:CIPHER_KEY_SIZE - 1]   i_cipher_key;
    input  [0:IV_SIZE - 1]           i_iv;
    input  [0:PLAIN_TEXT_SIZE - 1]   i_plain_text;
    input  [0:AAD_SIZE - 1]          i_aad;
    output [0:PLAIN_TEXT_SIZE - 1]   o_cipher_text;
    output [0:TAG_SIZE - 1]          o_tag;

    //Local input registers
    logic [0:CIPHER_KEY_SIZE - 1]   cipher_key;
    logic [0:IV_SIZE - 1]           iv;
    logic [0:PLAIN_TEXT_SIZE - 1]   plain_text;
    logic [0:AAD_SIZE - 1]          aad;

    //Local output registers
    logic [0:TAG_SIZE - 1]          tag;
    logic [0:PLAIN_TEXT_SIZE - 1]   cipher_text;

    //Latching the inputs
    always_ff @(posedge clk)
    begin
        cipher_key <= i_cipher_key;
        iv <= i_iv;
        plain_text <= i_plain_text;
        aad <= i_aad;

        o_tag <= tag;
        o_cipher_text <= cipher_text;
    end

    //Step 1 - Computing H value
     
endmodule

`timescale 1ns / 1ps

module aes(
        input clk,
        input [0:15] sw,
        input i_reset,
        output [3:0] an,
        output dp,
        output [6:0] seg
);
    
    //logic [0:1407] key_schedule;
    //reg [0:127] cipher_key = 128'h2b7e151628aed2a6abf7158809cf4f3c;  // NIST test key
    //reg [0:127] plain_text = 128'h3243f6a8885a308d313198a2e0370734;    //NIST test vector
    //reg [0:127] plain_text   = 128'h0ee00ee00ee00ee00ee00ee00ee00ee0;
    //reg [0:127] plain_text = {sw, sw, sw, sw, sw, sw, sw, sw};

    reg i__reset;
    //reg [0:127] cipher_text;
    
    logic clk_out;
    logic locked;
    logic [0:31] count_out;
    
    clk_gen clk_gen_instance(.clk_in1(clk),
                .reset(1'b0),
                .locked(locked),
                .clk_out(clk_out)
    );  
    
    /*
    aes_encrypt aes_encrypt_instance(.in(plain_text),
                            .clk(clk_out),
                            .out(cipher_text)
    );
    */
    
    /*        
    aes_encrypt_unroll aes_encrypt_instance(.in(sw),
                        .clk(clk_out),
                        .i__reset(i_reset),
                        .out(cipher_text),
                        .o__count__next(count_out)
    );
    */
    
    reg [0:95]  iv         = 96'hCAFEBABEFACEDBADDECAF888;
    //reg [0:511] plain_text = 512'hD9313225F88406E5A55909C5AFF5269A86A7A9531534F7DA2E4C303D8A318A721C3C0C95956809532FCF0E2449A6B525B16AEDF5AA0DE657BA637B391AAFD255;
    //reg [0:511] aad        = 512'h3AD77BB40D7A3660A89ECAF32466EF97F5D3D58503B9699DE785895A96FDBAAF43B1CD7F598ECE23881B00E3ED0306887B0C785E27E8AD3F8223207104725DD4;
    reg [0:511] cipher_text;
    reg [0:127] tag;
    
    gcm_aes gcm_aes_instance(
            .clk(clk_out),
            .i_iv(iv),
            .i_plain_text(sw),
            .i_aad(sw),
            .o_cipher_text(cipher_text),
            .o_tag(tag)
    );
    
    display u (
        .in_count(1),
        .i_x({cipher_text[0:7], tag[0:7]}),
        .clk(clk_out),
        .clr(1'b0),
        .a_to_g(seg),
        .an(an),
        .dp(dp)
    );
endmodule

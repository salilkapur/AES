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
    reg [0:15] in;
    reg i__reset;
    reg [0:127] plain_text = {sw, sw, sw, sw, sw, sw, sw, sw};
    reg [0:127] cipher_text;
    /*
    key_expansion key_expansion_ut(
                    .cipher_key(cipher_key),
                    .clk(clk),
                    .key_schedule(key_schedule)
    );
    */
    
    /*
    always_ff @(posedge clk_out)
    begin
        in <= sw;
        i__reset <= i_reset;
    end
    
    always_comb
    begin
        plain_text = {in, in, in, in, in, in, in, in}; ;
    end
    */
    
    logic clk_out;
    logic locked;
    logic [0:31] count_out;
    
    clk_gen(.clk_in1(clk),
                .reset(1'b0),
                .locked(locked),
                .clk_out(clk_out));  
                
    aes_encrypt_unroll aes_encrypt_instance(.in(plain_text),
                        .clk(clk_out),
                        .i__reset(i_reset),
                        .out(cipher_text),
                        .o__count__next(count_out)
    );
    
    display u (
    .in_count(count_out),
    .i_x(cipher_text[0:15]),
    .clk(clk_out),
    .clr(1'b0),
    .a_to_g(seg),
    .an(an),
    .dp(dp)
    );
endmodule

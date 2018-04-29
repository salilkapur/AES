`timescale 1ns / 1ps

package globals;
    parameter IV_SIZE           = 96;
    parameter BLOCK_SIZE        = 128;
    parameter PLAIN_TEXT_SIZE   = 128;
    parameter AAD_SIZE          = 128; // Ignoring AAD for now
    parameter TAG_SIZE          = 128;
    parameter AUTH_INPUT_SIZE   = 640; //AAD_SIZE + PLAIN_TEXT_SIZE + 64 + 64 (Ignoring AAD length for now)
endpackage

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

module gcm_aes(
        clk,
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
    input   i_new_instance;

    input  [0:globals::IV_SIZE - 1]           i_iv;
    input  [0:globals::PLAIN_TEXT_SIZE - 1]   i_plain_text;
    input  [0:globals::AAD_SIZE - 1]          i_aad;
    input  [0:127]                            i_cipher_key;

    output reg [0:globals::PLAIN_TEXT_SIZE - 1]   o_cipher_text;
    output reg [0:globals::TAG_SIZE - 1]          o_tag;
    output reg                                    o_tag_ready;

    /* Pipeline registers (grouped by stages) */
    logic                                   r_s0_new_instance;
    logic [0:globals::IV_SIZE - 1]          r_s0_iv;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s0_plain_text;
    logic [0:globals::AAD_SIZE - 1]         r_s0_aad;
    logic [0:127]                           r_s0_cipher_key;

    logic                                   r_s1_new_instance;
    logic [0:globals::IV_SIZE - 1]          r_s1_iv;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s1_plain_text;
    logic [0:globals::AAD_SIZE - 1]         r_s1_aad;
    logic [0:1407]                          r_s1_key_schedule;

    logic                                   r_s2_new_instance;
    logic [0:globals::IV_SIZE - 1]          r_s2_iv;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s2_plain_text;
    logic [0:globals::AAD_SIZE - 1]         r_s2_aad;
    logic [0:1407]                          r_s2_key_schedule;

    logic                                   r_s3_new_instance;
    logic [0:globals::IV_SIZE - 1]          r_s3_iv;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s3_plain_text;
    logic [0:globals::AAD_SIZE - 1]         r_s3_aad;
    logic [0:127]                           r_s3_j0;
    logic [0:127]                           r_s3_h;
    logic [0:127]                           r_s3_cb;
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
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s7_plain_text;
    logic [0:globals::AAD_SIZE - 1]         r_s7_aad;
    logic [0:127]                           r_s7_h;
    logic [0:127]                           r_s7_encrypted_j0;
    logic [0:127]                           r_s7_encrypted_cb;
    logic [0:1407]                          r_s7_key_schedule;

    logic                                   r_s8_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s8_cipher_text;
    logic [0:127]                           r_s8_h;
    logic [0:127]                           r_s8_encrypted_j0;
    logic [0:3]                             r_s8_counter;
    logic [0:127]                           r_s8_sblock;


    /* Wires within a pipeline stage (grouped by stages) */
    logic                                   w_s0_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s0_plain_text;
    logic [0:127]                           w_s0_iv;
    logic [0:1407]                          w_s0_key_schedule;
    //logic [0:globals::AAD_SIZE - 1]         w_s0_aad;

    logic                                   w_s1_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s1_plain_text;
    logic [0:127]                           w_s1_iv;
    logic [0:1407]                          w_s1_key_schedule;
    //logic [0:globals::AAD_SIZE - 1]         w_s1_aad;

    logic                                   w_s2_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s2_plain_text;
    logic [0:127]                           w_s2_iv;
    logic [0:127]                           w_s2_h;
    //logic [0:globals::AAD_SIZE - 1]         w_s2_aad;
    logic [0:127]                           w_s2_j0;
    logic [0:1407]                          w_s2_key_schedule;

    logic                                   w_s3_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s3_plain_text;
    logic [0:127]                           w_s3_h;
    logic [0:127]                           w_s3_cb;
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
    logic [0:127]                           w_s6_h;
    //logic [0:globals::AAD_SIZE - 1]         w_s6_aad;
    logic [0:127]                           w_s6_encrypted_j0;
    logic [0:127]                           w_s6_encrypted_cb;
    logic [0:1407]                          w_s6_key_schedule;

    logic                                   w_s7_new_instance;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s7_plain_text;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s7_cipher_text;
    logic [0:127]                           w_s7_h;
    //logic [0:globals::AAD_SIZE - 1]         w_s7_aad;
    logic [0:127]                           w_s7_encrypted_j0;
    logic [0:127]                           w_s7_encrypted_cb;

    logic [0:3]                             w_s8_counter;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_s8_cipher_text;
    logic [0:127]                           w_s8_sblock;
    logic [0:127]                           w_s8_pre_tag;
    logic [0:127]                           w_s8_auth_input;
    logic [0:globals::TAG_SIZE - 1]         w_s8_tag;
    logic                                   w_s8_tag_ready;

    int i;
    // Following variables have the same meaning as in the NIST document
    int n;
    int m;
    int s;

    always_ff @(posedge clk)
    begin
        /* Latch inputs */
        r_s0_iv             <= i_iv;
        r_s0_plain_text     <= i_plain_text;
        r_s0_new_instance   <= i_new_instance;
        r_s0_cipher_key     <= i_cipher_key;
        //r_s0_aad          <= i_aad;
        
        r_s1_iv             <= w_s0_iv;
        r_s1_plain_text     <= w_s0_plain_text;
        r_s1_new_instance   <= w_s0_new_instance;
        //r_s1_aad          <= w_s0_aad;
        r_s1_key_schedule   <= w_s0_key_schedule;


        /* Latch Stage 0 */
        r_s2_iv             <= w_s1_iv;
        r_s2_plain_text     <= w_s1_plain_text;
        r_s2_new_instance   <= w_s1_new_instance;
        //r_s2_aad          <= w_s1_aad;
        r_s2_key_schedule   <= w_s1_key_schedule;

        /* Latch State 1 outputs */
        r_s3_plain_text     <= w_s2_plain_text;
        //r_s3_aad          <= w_s2_aad;
        r_s3_iv             <= w_s2_iv;
        r_s3_h              <= w_s2_h;
        r_s3_new_instance   <= w_s2_new_instance;
        r_s3_j0             <= w_s2_j0;
        r_s3_key_schedule   <= w_s2_key_schedule;

        /* Latch Stage 2 outputs */
        r_s4_new_instance   <= w_s3_new_instance;
        //r_s4_aad          <= w_s3_aad;
        r_s4_plain_text     <= w_s3_plain_text;
        r_s4_h              <= w_s3_h;
        r_s3_cb             <= w_s3_cb;
        r_s4_encrypted_cb   <= w_s3_encrypted_cb;
        r_s4_encrypted_j0   <= w_s3_encrypted_j0;
        r_s4_key_schedule   <= w_s3_key_schedule;

        /* Latch Stage 3 outputs */
        r_s5_new_instance   <= w_s4_new_instance;
        //r_s5_aad          <= w_s4_aad;
        r_s5_plain_text     <= w_s4_plain_text;
        r_s5_h              <= w_s4_h;
        r_s5_encrypted_cb   <= w_s4_encrypted_cb;
        r_s5_encrypted_j0   <= w_s4_encrypted_j0;
        r_s5_key_schedule   <= w_s4_key_schedule;

        /* Latch Stage 4 outputs */
        r_s6_new_instance   <= w_s5_new_instance;
        //r_s6_aad          <= w_s5_aad;
        r_s6_plain_text     <= w_s5_plain_text;
        r_s6_h              <= w_s5_h;
        r_s6_encrypted_cb   <= w_s5_encrypted_cb;
        r_s6_encrypted_j0   <= w_s5_encrypted_j0;
        r_s6_key_schedule   <= w_s5_key_schedule;

        /* Latch Stage 5 outputs */
        r_s7_new_instance   <= w_s6_new_instance;
        //r_s7_aad          <= w_s6_aad;
        r_s7_plain_text     <= w_s6_plain_text;
        r_s7_h              <= w_s6_h;
        r_s7_encrypted_cb   <= w_s6_encrypted_cb;
        r_s7_encrypted_j0   <= w_s6_encrypted_j0;
        r_s7_key_schedule   <= w_s6_key_schedule;

        /* Latch Stage 6 outputs */
        r_s8_new_instance   <= w_s7_new_instance;
        r_s8_h              <= w_s7_h;
        r_s8_encrypted_j0   <= w_s7_encrypted_j0;
        r_s8_cipher_text    <= w_s7_cipher_text;

        /* Latch Stage 7 outputs */
        r_s8_counter        <= w_s8_counter; // Cycle
        r_s8_sblock         <= w_s8_sblock; // Cycle

        /* Latch final outputs */
        o_tag               <= w_s8_tag;
        o_tag_ready         <= w_s8_tag_ready;
        o_cipher_text       <= w_s8_cipher_text;
    end

    //Helper variables

    always_comb
    begin
        /* ------------------ PIPELINE STAGE - 0 [BEGIN] ------------------*/
        $display("Stage 0 - START");
        w_s0_key_schedule = fn_key_expansion_stage1(r_s0_cipher_key);

        /* Carrying forward register values for subsequent stages */
        w_s0_plain_text = r_s0_plain_text;
        //w_s1_aad = r_s1_aad;
        w_s0_new_instance = r_s0_new_instance;
        w_s0_iv = r_s0_iv;
        $display("Stage 0 - END");
        /* ------------------ PIPELINE STAGE - 0 [END] ------------------*/


        /* ------------------ PIPELINE STAGE - 0 [BEGIN] ------------------*/
        $display("Stage 0 - START");
        w_s1_key_schedule = fn_key_expansion_stage2(r_s1_key_schedule);
        //$display("Key schedule: %h", w_s1_key_schedule);
        /* Carrying forward register values for subsequent stages */
        w_s1_plain_text = r_s1_plain_text;
        //w_s1_aad = r_s1_aad;
        w_s1_new_instance = r_s1_new_instance;
        w_s1_iv = r_s1_iv;
        $display("Stage 0 - END");
        /* ------------------ PIPELINE STAGE - 0 [END] ------------------*/

        /* ------------------ PIPELINE STAGE - 1 [BEGIN] ------------------*/
        $display("Stage 1 - START");

        /* Step 1 - Start computing H value */
        w_s2_h = fn_aes_encrypt_stage(128'd0, r_s2_key_schedule, 1);

        //Step 2 - Compute J_0
        w_s2_j0 = {r_s2_iv, 32'd1};
        $display("\t\tJ_0: %h", w_s2_j0);
        $display("\t\tIV: %h", r_s2_iv);

        /* Carrying forward register values for subsequent stages */
        w_s2_plain_text = r_s2_plain_text;
        //w_s2_aad = r_s2_aad;
        w_s2_new_instance = r_s2_new_instance;
        w_s2_key_schedule = r_s2_key_schedule;
        $display("\t\tPLAIN TEXT: %h", r_s2_plain_text);

        $display("Stage 1 - END");
        /*------------------ PIPELINE STAGE - 1 [END] ------------------*/

        /*------------------ PIPELINE STAGE - 2 [BEGIN] ------------------*/
        $display("Stage 2 - START");
        w_s3_h = fn_aes_encrypt_stage(r_s3_h, r_s3_key_schedule, 3);

        /* Start computing CIPH(J0) for step 3 */
        if (r_s3_new_instance == 1)
            w_s3_cb = {r_s3_j0[0:95], r_s3_j0[96:127] + 1'b1};
        else
            w_s3_cb = {r_s3_cb[0:95], r_s3_cb[96:127] + 1'b1};
        $display("\t\tCB: %h", w_s3_cb);
        $display("\t\tCB: %h", w_s3_encrypted_cb);
        w_s3_encrypted_cb = fn_aes_encrypt_stage(w_s3_cb, r_s3_key_schedule, 1);

        /* Compute encrypted value of J0 that will be used later in
        * stage 7
        */
        w_s3_encrypted_j0 = fn_aes_encrypt_stage(r_s3_j0, r_s3_key_schedule, 1);

        /* Carrying forward register values for subsequent stages */
        w_s3_plain_text = r_s3_plain_text;
        $display("\t\tPLAIN TEXT: %h", r_s3_plain_text);
        //w_s3_aad = r_s3_aad;
        w_s3_new_instance = r_s3_new_instance;
        w_s3_key_schedule = r_s3_key_schedule;
        $display("Stage 2 - END");
        /*------------------ PIPELINE STAGE - 2 [END] ------------------*/

        /*------------------ PIPELINE STAGE - 3 [START] ------------------*/
        $display("Stage 3 - START");
        w_s4_h = fn_aes_encrypt_stage(r_s4_h, r_s4_key_schedule, 5);
        w_s4_encrypted_cb = fn_aes_encrypt_stage(r_s4_encrypted_cb, r_s4_key_schedule, 3);
        w_s4_encrypted_j0 = fn_aes_encrypt_stage(r_s4_encrypted_j0, r_s4_key_schedule, 3);

        /* Carrying forward register values for subsequent stages */
        w_s4_plain_text = r_s4_plain_text;
        //w_s4_aad = r_s4_aad;
        w_s4_new_instance = r_s4_new_instance;
        w_s4_key_schedule = r_s4_key_schedule;
        $display("\t\tPLAIN TEXT: %h", r_s4_plain_text);
        $display("Stage 3 - END");
        /*------------------ PIPELINE STAGE - 3 [END] ------------------*/

        /*------------------ PIPELINE STAGE - 4 [START] ------------------*/
        $display("Stage 4 - START");
        w_s5_h = fn_aes_encrypt_stage(r_s5_h, r_s5_key_schedule, 7);
        w_s5_encrypted_cb = fn_aes_encrypt_stage(r_s5_encrypted_cb, r_s5_key_schedule, 5);
        w_s5_encrypted_j0 = fn_aes_encrypt_stage(r_s5_encrypted_j0, r_s5_key_schedule, 5);

        /* Carrying forward register values for subsequent stages */
        w_s5_plain_text = r_s5_plain_text;
        //w_s5_aad = r_s5_aad;
        w_s5_new_instance = r_s5_new_instance;
        w_s5_key_schedule = r_s5_key_schedule;
        $display("\t\tPLAIN TEXT: %h", r_s5_plain_text);
        $display("Stage 4 - END");
        /*------------------ PIPELINE STAGE - 4 [END] ------------------*/

        /*------------------ PIPELINE STAGE - 5 [START] ------------------*/
        $display("Stage 5 - START");
        w_s6_h = fn_aes_encrypt_stage(r_s6_h, r_s6_key_schedule, 9);
        w_s6_encrypted_cb = fn_aes_encrypt_stage(r_s6_encrypted_cb, r_s6_key_schedule, 7);
        w_s6_encrypted_j0 = fn_aes_encrypt_stage(r_s6_encrypted_j0, r_s6_key_schedule, 7);

        /* Carrying forward register values for subsequent stages */
        w_s6_plain_text = r_s6_plain_text;
        //w_s6_aad = r_s6_aad;
        w_s6_new_instance = r_s6_new_instance;
        w_s6_key_schedule = r_s6_key_schedule;
        $display("\t\tPLAIN TEXT: %h", r_s6_plain_text);
        $display("Stage 5 - END");
        /*------------------ PIPELINE STAGE - 5 [END] ------------------*/

        /*------------------ PIPELINE STAGE - 6 [START] ------------------*/
        $display("Stage 6 - START");
        w_s7_encrypted_cb = fn_aes_encrypt_stage(r_s7_encrypted_cb, r_s7_key_schedule, 9);
        w_s7_encrypted_j0 = fn_aes_encrypt_stage(r_s7_encrypted_j0, r_s7_key_schedule, 9);
        w_s7_cipher_text = r_s7_plain_text ^ w_s7_encrypted_cb;

        //Step 3b - GCTR operation

        $display("\t\tPT: %h", r_s7_plain_text);
        
        $display("\t\tEncrypted CB: %h", r_s7_encrypted_cb);
        $display("\t\tCIPHER TEXT: %h", w_s7_cipher_text);

        /* Carrying forward register values for subsequent stages */
        //w_s7_aad = r_s7_aad;
        w_s7_new_instance = r_s7_new_instance;
        w_s7_h = r_s7_h;
        w_s7_encrypted_j0 = r_s7_encrypted_j0;
        $display("Stage 6 - END");
        /*------------------ PIPELINE STAGE - 6 [END] ------------------*/

        /*------------------ PIPELINE STAGE - 7 [START] ------------------*/
        $display("Stage 7 - START");

        /*
        * Step 4 - Computing constants is not necessary since we are assuming
        * the inputs are multiples of 128 (zero padding is done to align the
        * size with 128).
        */
        $display("\t\tNEW INSTANCE: %d", r_s8_new_instance);
        if (r_s8_new_instance == 1)
        begin
            $display("\t\tInitializing S Block");
            w_s8_sblock = 128'd0;
            w_s8_counter = 0;
        end
        else
        begin
            w_s8_sblock = r_s8_sblock;
            w_s8_counter = r_s8_counter + 1;
        end


        m = (globals::AUTH_INPUT_SIZE / 128) - 1; // Total blocks minus one

        if (w_s8_counter == m)
        begin
            /*
            * Following computation is for the previous plain text instance
            * This logic is to accomodate the last 128 bits of zeros in
            * authentication input
            */
            w_s8_auth_input = {64'd0, 64'd512};
            w_s8_tag_ready = 1'b1;
        end
        else
        begin
            w_s8_auth_input = r_s8_cipher_text;
            w_s8_tag_ready = 1'b0;
        end

        w_s8_sblock = (w_s8_sblock ^ w_s8_auth_input);
        w_s8_sblock = fn_product(w_s8_sblock, r_s8_h);
        w_s8_pre_tag = w_s8_sblock ^ r_s8_encrypted_j0;
        w_s8_tag = w_s8_pre_tag[0:globals::TAG_SIZE-1];

        $display("\t\tEncrypted J0: %h", r_s8_encrypted_j0);
        $display("\t\tPRE TAG: %h", w_s8_pre_tag);
        $display("\t\tAUTH INPUT: %h", w_s8_auth_input);
        $display("\t\tS: %h", w_s8_sblock);
        $display("\t\tAUTH TAG: %h", w_s8_tag);
        $display("\t\tAUTH TAG READY: %d", w_s8_tag_ready);

        w_s8_cipher_text = r_s8_cipher_text;

        $display("Stage 7 - END");
        /*------------------ PIPELINE STAGE - 7 [END] ------------------*/
    end
endmodule

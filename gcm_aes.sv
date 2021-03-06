`timescale 1ns / 1ps

/* 
* Plain text and aad size here only refer to
* plain text and add block size and not the total
* size.
*/

module gcm_aes(
        clk,
        i_new_instance,
        i_pt_instance,
        i_iv,
        i_cipher_key,
        i_plain_text,
        i_aad,
        i_plain_text_size,
        i_aad_size,
        o_cipher_text,
        o_tag,
        o_tag_ready
    );

    input   clk;
    input   i_new_instance;
    input   i_pt_instance;

    input  [0:95]       i_iv;
    input  [0:127]      i_plain_text;
    input  [0:127]      i_aad;
    input  [0:127]      i_cipher_key;
    input  [0:63]       i_plain_text_size;
    input  [0:63]       i_aad_size;

    output logic [0:127]   o_cipher_text;
    output logic [0:127]   o_tag;
    output logic           o_tag_ready;
    
    /* Wires joining Stage1 and Stage2 */
    logic             w_s1_new_instance;
    logic             w_s1_pt_instance;
    logic [0:127]     w_s1_plain_text;
    logic [0:95]      w_s1_iv;
    logic [0:1407]    w_s1_key_schedule;
    logic [0:127]     w_s1_aad;
    logic [0:127]     w_s1_instance_size;

    /* Wires joining Stage2 and Stage3 */
    logic             w_s2_new_instance;
    logic             w_s2_pt_instance;
    logic [0:127]     w_s2_plain_text;
    logic [0:127]     w_s2_j0;
    logic [0:127]     w_s2_h;
    logic [0:1407]    w_s2_key_schedule;
    logic [0:127]     w_s2_aad;
    logic [0:127]     w_s2_instance_size;
   
    /* Wires joining Stage3 and Stage4 */
    logic             w_s3_new_instance;
    logic [0:127]     w_s3_plain_text;
    logic [0:127]     w_s3_encrypted_j0;
    logic [0:127]     w_s3_encrypted_cb;
    logic [0:127]     w_s3_h;
    logic [0:1407]    w_s3_key_schedule;
    logic [0:127]     w_s3_aad;
    logic [0:127]     w_s3_instance_size;

    /* Wires joining Stage4 and Stage5 */
    logic             w_s4_new_instance;
    logic [0:127]     w_s4_plain_text;
    logic [0:127]     w_s4_encrypted_j0;
    logic [0:127]     w_s4_encrypted_cb;
    logic [0:127]     w_s4_h;
    logic [0:1407]    w_s4_key_schedule;
    logic [0:127]     w_s4_aad;
    logic [0:127]     w_s4_instance_size;

    /* Wires joining Stage4 and Stage5 */
    logic             w_s5_new_instance;
    logic [0:127]     w_s5_plain_text;
    logic [0:127]     w_s5_encrypted_j0;
    logic [0:127]     w_s5_encrypted_cb;
    logic [0:127]     w_s5_h;
    logic [0:1407]    w_s5_key_schedule;
    logic [0:127]     w_s5_aad;
    logic [0:127]     w_s5_instance_size;
   
    /* Wires joining Stage5 and Stage6 */
    logic             w_s6_new_instance;
    logic [0:127]     w_s6_plain_text;
    logic [0:127]     w_s6_encrypted_j0;
    logic [0:127]     w_s6_encrypted_cb;
    logic [0:127]     w_s6_h;
    logic [0:1407]    w_s6_key_schedule;
    logic [0:127]     w_s6_aad;
    logic [0:127]     w_s6_instance_size;

    /* Wires joining Stage6 and Stage7 */
    logic             w_s7_new_instance;
    logic [0:127]     w_s7_cipher_text;
    logic [0:127]     w_s7_encrypted_j0;
    logic [0:127]     w_s7_h;
    logic [0:1407]    w_s7_key_schedule;
    logic [0:127]     w_s7_aad;
    logic [0:127]     w_s7_instance_size;
   

    aes_pipeline_stage1 stage1(
        .clk(clk),
        .i_cipher_key(i_cipher_key),
        .i_plain_text(i_plain_text),
        .i_aad(i_aad),
        .i_new_instance(i_new_instance),
        .i_iv(i_iv),
        .i_instance_size({i_aad_size, i_plain_text_size}),
        .i_pt_instance(i_pt_instance),
        .o_key_schedule(w_s1_key_schedule),
        .o_plain_text(w_s1_plain_text),
        .o_aad(w_s1_aad),
        .o_iv(w_s1_iv),
        .o_instance_size(w_s1_instance_size),
        .o_new_instance(w_s1_new_instance),
        .o_pt_instance(w_s1_pt_instance)
    );

    aes_pipeline_stage2 stage2(
        .clk(clk),
        .i_plain_text(w_s1_plain_text),
        .i_aad(w_s1_aad),
        .i_new_instance(w_s1_new_instance),
        .i_iv(w_s1_iv),
        .i_instance_size(w_s1_instance_size),
        .i_pt_instance(w_s1_pt_instance),
        .i_key_schedule(w_s1_key_schedule),
        .o_h(w_s2_h),
        .o_j0(w_s2_j0),
        .o_key_schedule(w_s2_key_schedule),
        .o_plain_text(w_s2_plain_text),
        .o_aad(w_s2_aad),
        .o_instance_size(w_s2_instance_size),
        .o_new_instance(w_s2_new_instance),
        .o_pt_instance(w_s2_pt_instance)
    );
    
    aes_pipeline_stage3 stage3(
        .clk(clk),
        .i_plain_text(w_s2_plain_text),
        .i_aad(w_s2_aad),
        .i_new_instance(w_s2_new_instance),
        .i_h(w_s2_h),
        .i_j0(w_s2_j0),
        .i_instance_size(w_s2_instance_size),
        .i_pt_instance(w_s2_pt_instance),
        .i_key_schedule(w_s2_key_schedule),
        .o_h(w_s3_h),
        .o_encrypted_j0(w_s3_encrypted_j0),
        .o_encrypted_cb(w_s3_encrypted_cb),
        .o_key_schedule(w_s3_key_schedule),
        .o_plain_text(w_s3_plain_text),
        .o_aad(w_s3_aad),
        .o_instance_size(w_s3_instance_size),
        .o_new_instance(w_s3_new_instance)
    );

    aes_pipeline_stage4 stage4(
        .clk(clk),
        .i_plain_text(w_s3_plain_text),
        .i_aad(w_s3_aad),
        .i_new_instance(w_s3_new_instance),
        .i_h(w_s3_h),
        .i_encrypted_j0(w_s3_encrypted_j0),
        .i_encrypted_cb(w_s3_encrypted_cb),
        .i_instance_size(w_s3_instance_size),
        .i_key_schedule(w_s3_key_schedule),
        .o_h(w_s4_h),
        .o_encrypted_j0(w_s4_encrypted_j0),
        .o_encrypted_cb(w_s4_encrypted_cb),
        .o_key_schedule(w_s4_key_schedule),
        .o_plain_text(w_s4_plain_text),
        .o_aad(w_s4_aad),
        .o_instance_size(w_s4_instance_size),
        .o_new_instance(w_s4_new_instance)
    );

    aes_pipeline_stage5 stage5(
        .clk(clk),
        .i_plain_text(w_s4_plain_text),
        .i_aad(w_s4_aad),
        .i_new_instance(w_s4_new_instance),
        .i_h(w_s4_h),
        .i_encrypted_j0(w_s4_encrypted_j0),
        .i_encrypted_cb(w_s4_encrypted_cb),
        .i_instance_size(w_s4_instance_size),
        .i_key_schedule(w_s4_key_schedule),
        .o_h(w_s5_h),
        .o_encrypted_j0(w_s5_encrypted_j0),
        .o_encrypted_cb(w_s5_encrypted_cb),
        .o_key_schedule(w_s5_key_schedule),
        .o_plain_text(w_s5_plain_text),
        .o_aad(w_s5_aad),
        .o_instance_size(w_s5_instance_size),
        .o_new_instance(w_s5_new_instance)
    );

    aes_pipeline_stage6 stage6(
        .clk(clk),
        .i_plain_text(w_s5_plain_text),
        .i_aad(w_s5_aad),
        .i_new_instance(w_s5_new_instance),
        .i_h(w_s5_h),
        .i_encrypted_j0(w_s5_encrypted_j0),
        .i_encrypted_cb(w_s5_encrypted_cb),
        .i_instance_size(w_s5_instance_size),
        .i_key_schedule(w_s5_key_schedule),
        .o_h(w_s6_h),
        .o_encrypted_j0(w_s6_encrypted_j0),
        .o_encrypted_cb(w_s6_encrypted_cb),
        .o_key_schedule(w_s6_key_schedule),
        .o_plain_text(w_s6_plain_text),
        .o_aad(w_s6_aad),
        .o_instance_size(w_s6_instance_size),
        .o_new_instance(w_s6_new_instance)
    );

    aes_pipeline_stage7 stage7(
        .clk(clk),
        .i_plain_text(w_s6_plain_text),
        .i_aad(w_s6_aad),
        .i_new_instance(w_s6_new_instance),
        .i_h(w_s6_h),
        .i_encrypted_j0(w_s6_encrypted_j0),
        .i_encrypted_cb(w_s6_encrypted_cb),
        .i_instance_size(w_s6_instance_size),
        .i_key_schedule(w_s6_key_schedule),
        .o_h(w_s7_h),
        .o_encrypted_j0(w_s7_encrypted_j0),
        .o_cipher_text(w_s7_cipher_text),
        .o_aad(w_s7_aad),
        .o_instance_size(w_s7_instance_size),
        .o_new_instance(w_s7_new_instance)
    );

    aes_pipeline_stage8 stage8(
        .clk(clk),
        .i_cipher_text(w_s7_cipher_text),
        .i_aad(w_s7_aad),
        .i_new_instance(w_s7_new_instance),
        .i_h(w_s7_h),
        .i_encrypted_j0(w_s7_encrypted_j0),
        .i_instance_size(w_s7_instance_size),
        .o_cipher_text(o_cipher_text),
        .o_tag_ready(o_tag_ready),
        .o_tag(o_tag)
    );

endmodule

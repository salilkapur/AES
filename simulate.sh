rm -rf xsim.dir
xvlog -sv fn_aes_encrypt_stage.sv fn_aes_ghash_multiplication.sv fn_aes_key_expansion.sv aes_pipeline_stage1.sv aes_pipeline_stage2.sv aes_pipeline_stage3.sv aes_pipeline_stage4.sv aes_pipeline_stage5.sv aes_pipeline_stage6.sv aes_pipeline_stage7.sv aes_pipeline_stage8.sv gcm_aes.sv testbench.sv
xelab testbench
xsim work.testbench --runall

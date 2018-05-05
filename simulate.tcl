xvlog -sv aes_encrypt_stage.sv gcm_aes.sv testbench.sv
xelab testbench
xsim work.testbench

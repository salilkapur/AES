# Synthesis script

# Read verilog source files
read_verilog -sv  aes.sv
read_verilog -sv  aes_encrypt.sv
read_verilog -sv  display.sv
read_xdc          constraints_artix_7.xdc

# Run Synthesis
synth_design -top aes -part xc7a35tcpg236-1

# Report timing
report_timing -setup -file aes_setup_report.txt
report_timing -hold  -file aes_hold_report.txt

write_sdf -force syn_output.sdf
write_verilog -sdf_anno true -mode timesim -force syn_output.v

place_design
route_design
write_sdf -force pnr_output.sdf
write_verilog -sdf_anno true -mode timesim -force pnr_output.v
report_timing -setup
report_timing -hold

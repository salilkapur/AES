# Synthesis and Implementation script

#Set part number
set_part xc7a35tcpg236-1

# Read verilog source files
read_verilog -sv  clk_gen.sv
read_verilog -sv  fn_aes_encrypt_stage.sv
read_verilog -sv  fn_aes_key_expansion.sv
read_verilog -sv  gcm_aes.sv
read_verilog -sv  display.sv
read_verilog -sv  aes.sv

#Read constraints file
read_xdc constraints_artix_7.xdc

# Run Synthesis
synth_design -top aes

# Reports after synthesis
report_timing -setup  -file ./reports/synth_aes_setup_report.txt
report_timing -hold   -file ./reports/synth_aes_hold_report.txt
report_timing_summary -file ./reports/synth_timing_report_aes.txt
report_utilization    -file ./reports/synth_utilization_report.txt

#Run implementation
place_design
route_design

# Reports after implementation
report_timing -setup  -file ./reports/impl_aes_setup_report.txt
report_timing -hold   -file ./reports/impl_aes_hold_report.txt
report_timing_summary -file ./reports/impl_timing_report_aes.txt
report_utilization    -file ./reports/impl_utilization_report.txt

#Write bitstream
write_bitstream -force ./bitstreams/aes.bit

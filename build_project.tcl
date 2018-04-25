# Synthesis script

#Set part number
set_part xc7a35tcpg236-1
# Read verilog source files
read_verilog -sv  aes.sv
read_verilog -sv  gcm_aes.sv
read_verilog -sv  display.sv
read_verilog -sv  clk_gen.sv

#Read constraints file
read_xdc          constraints_artix_7.xdc

# Run Synthesis
synth_design -directive runtimeoptimized -top aes

# Report timing
report_timing -setup -file synth_5_aes_7_gcm_setup_report.txt
report_timing -hold  -file synth_5_aes_7_gcm_hold_report.txt

opt_design
place_design
route_design

# Report timing
report_timing -setup -file impl_5_aes_7_gcm_setup_report.txt
report_timing -hold  -file impl_5_aes_7_gcm_hold_report.txt
report_timing_summary -file impl_5_aes_7_gcm_timing_summary.txt

write_bitstream -force ./bitstreams/aes.bit

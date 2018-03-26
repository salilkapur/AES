# Lite version of compiler script
set_part xc7a35tcpg236-1
read_verilog -sv  [lindex $argv 0]
read_xdc          [lindex $argv 1]
synth_design -directive runtimeoptimized -top [lindex $argv 2]
place_design
route_design
report_timing -setup
report_timing -hold
report_timing_summary

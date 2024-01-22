onerror {quit -f}
vlib work
vlog -work work Simple_Processor.vo
vlog -work work Simple_Processor.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Simple_Processor_CONTROLLER_vlg_vec_tst
vcd file -direction Simple_Processor.msim.vcd
vcd add -internal Simple_Processor_CONTROLLER_vlg_vec_tst/*
vcd add -internal Simple_Processor_CONTROLLER_vlg_vec_tst/i1/*
add wave /*
run -all

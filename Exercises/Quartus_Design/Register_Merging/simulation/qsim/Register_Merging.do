onerror {quit -f}
vlib work
vlog -work work Register_Merging.vo
vlog -work work Register_Merging.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Register_Merging_DATAPATH_vlg_vec_tst
vcd file -direction Register_Merging.msim.vcd
vcd add -internal Register_Merging_DATAPATH_vlg_vec_tst/*
vcd add -internal Register_Merging_DATAPATH_vlg_vec_tst/i1/*
add wave /*
run -all

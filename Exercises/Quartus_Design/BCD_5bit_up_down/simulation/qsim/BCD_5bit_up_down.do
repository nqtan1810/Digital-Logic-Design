onerror {quit -f}
vlib work
vlog -work work BCD_5bit_up_down.vo
vlog -work work BCD_5bit_up_down.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.TOP_vlg_vec_tst
vcd file -direction BCD_5bit_up_down.msim.vcd
vcd add -internal TOP_vlg_vec_tst/*
vcd add -internal TOP_vlg_vec_tst/i1/*
add wave /*
run -all

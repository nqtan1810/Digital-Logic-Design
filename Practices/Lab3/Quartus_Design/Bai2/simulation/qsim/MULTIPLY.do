onerror {quit -f}
vlib work
vlog -work work MULTIPLY.vo
vlog -work work MULTIPLY.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MULTIPLY_vlg_vec_tst
vcd file -direction MULTIPLY.msim.vcd
vcd add -internal MULTIPLY_vlg_vec_tst/*
vcd add -internal MULTIPLY_vlg_vec_tst/i1/*
add wave /*
run -all

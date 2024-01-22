onerror {quit -f}
vlib work
vlog -work work modulo_3_updown_counter.vo
vlog -work work modulo_3_updown_counter.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.modulo_3_updown_counter_vlg_vec_tst
vcd file -direction modulo_3_updown_counter.msim.vcd
vcd add -internal modulo_3_updown_counter_vlg_vec_tst/*
vcd add -internal modulo_3_updown_counter_vlg_vec_tst/i1/*
add wave /*
run -all

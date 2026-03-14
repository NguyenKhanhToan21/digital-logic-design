onerror {quit -f}
vlib work
vlog -work work LAB4.vo
vlog -work work LAB4.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.controller_vlg_vec_tst
vcd file -direction LAB4.msim.vcd
vcd add -internal controller_vlg_vec_tst/*
vcd add -internal controller_vlg_vec_tst/i1/*
add wave /*
run -all

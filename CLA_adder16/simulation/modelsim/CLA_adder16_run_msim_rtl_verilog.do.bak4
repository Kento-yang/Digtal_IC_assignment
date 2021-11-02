transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/quartus_project/Digital_IC_assignment/CLA_adder {D:/quartus_project/Digital_IC_assignment/CLA_adder/CLA_adder.v}
vlog -vlog01compat -work work +incdir+D:/quartus_project/Digital_IC_assignment/CLA_adder16 {D:/quartus_project/Digital_IC_assignment/CLA_adder16/CLA_adder16.v}

vlog -vlog01compat -work work +incdir+D:/quartus_project/Digital_IC_assignment/CLA_adder16/simulation/modelsim {D:/quartus_project/Digital_IC_assignment/CLA_adder16/simulation/modelsim/CLA_adder16.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  CLA_adder16_tb

add wave *
view structure
view signals
run -all

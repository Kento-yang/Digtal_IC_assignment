transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Modelsim_project/Digital_IC_assignment/CLA_adder {D:/Modelsim_project/Digital_IC_assignment/CLA_adder/CLA_adder.v}

vlog -vlog01compat -work work +incdir+D:/Modelsim_project/Digital_IC_assignment/CLA_adder/simulation/modelsim {D:/Modelsim_project/Digital_IC_assignment/CLA_adder/simulation/modelsim/CLA_adder.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  CLA_adder_tb

add wave *
view structure
view signals
run -all

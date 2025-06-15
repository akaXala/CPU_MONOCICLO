########################################################
# script.do – PC (dec), instrucción (hex) y registros
########################################################

# ------ LIB ------
if {![file isdirectory work]} { vlib work }

# ------ COMPILE ------
foreach f {
  PC.vhd SP.vhd RAM.vhd ROM.vhd ALU.vhd SREG.vhd
  PORTB.vhd DECO_INSTR.vhd DECO.vhd MUX.vhd
  registro.vhd REG_FILE.vhd PORT_FILE.vhd         
  TOP.vhd tb_top.vhd
} { vcom -2008 -work work $f }

# ------ SIM ------
vsim -t ns work.tb_top

############################
# ▸ Señales de test-bench
############################
add wave -divider {TB}
add wave -radix bin /tb_top/tb_clk
add wave -radix bin /tb_top/tb_clr
add wave -radix bin /tb_top/tb_o0
add wave -radix bin /tb_top/tb_o1
add wave -radix bin /tb_top/tb_o2
add wave -radix bin /tb_top/tb_o3

############################
# ▸ PC, PC+offset e instrucción
############################
add wave -divider {PC / Instrucción}
add wave -radix unsigned /tb_top/uut/PC_aux
add wave -radix unsigned /tb_top/uut/I_PC_aux
add wave -radix hex      /tb_top/uut/I_aux

############################
# ▸ Registros R0…R31
############################
add wave -divider {REG_FILE – R0..R31}
for {set i 0} {$i < 32} {incr i} {
    set msb [expr {$i*8+7}]
    set lsb [expr {$i*8}]
    add wave -label R$i -radix hex "/tb_top/uut/REGE/Q_aux($msb downto $lsb)"
}

############################
# ▸ Stack RAM
############################
add wave -divider {Stack RAM}
for {set i 0} {$i < 16} {incr i} {
    add wave -label SP_$i -radix hex /tb_top/uut/STACK/ram($i)
}

############################
# ▸ Señales de control
############################
add wave -divider {Control}
foreach s {ld ld_mov br bn sel_rel en_w en_port en_sreg s1 s0 ret_s} {
    add wave -radix bin /tb_top/uut/$s
}
add wave -radix unsigned /tb_top/uut/sel_w_p

############################
# ▸ Ejecutar simulación
############################
run 1 ms
echo "Ondas cargadas – revisa la GUI."

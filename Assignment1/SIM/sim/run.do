quit -sim

# Set the working directory
vlib work

# Compile the VHDL files
vcom -work work ../source/PRJ_TOP.vhd
vcom -work work ../source/CLKDIVIDER.vhd
vcom -work work ../source/DEBOUNCE.vhd
vcom -work work ../source/LEDCONTROL.vhd
vcom -work work ../Testbench/TBPRJ_TOP.vhd

# Load the design
vsim work.TBPRJ_TOP
view wave

# Source the waveform script
do wave.do

view structure
view signals

run 500 us
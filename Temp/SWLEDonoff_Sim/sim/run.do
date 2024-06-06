quit -sim

# Set the working directory
vlib work

# Compile the VHDL files
vcom -work work ../source/SWLEDonoff.vhd
vcom -work work ../Testbench/TbSWLEDonoff.vhd

# Load the design
vsim -t 100ps -novopt work.TbSWLEDonoff
view wave

# Source the waveform script
do wave.do

view structure
view signals

run 1000 ns	
quit -sim

# Set the working directory
vlib work

# Compile the VHDL files
vcom -work work ../source/LEDcounter.vhd
vcom -work work ../Testbench/TbLEDcounter.vhd

# Load the design
vsim work.TbLEDcounter
view wave

# Source the waveform script
do wave.do

view structure
view signals

run 1000 ns
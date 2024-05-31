quit -sim

# Set the working directory
vlib work

# Compile the VHDL files
vcom -work work ../source/LEDonoff1s.vhd
vcom -work work ../Testbench/TbLEDonoff1s.vhd

# Load the design
vsim work.TbLEDonoff1s
view wave

# Source the waveform script
do wave.do

view structure
view signals

run 10000 ns	
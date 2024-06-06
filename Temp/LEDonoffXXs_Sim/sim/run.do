quit -sim

# Set the working directory
vlib work

# Compile the VHDL files
vcom -work work ../source/LEDonoffXXs.vhd
vcom -work work ../Testbench/TbLEDonoffXXs.vhd

# Load the design
vsim work.TbLEDonoffXXs
view wave

# Source the waveform script
do wave.do

view structure
view signals

run 30 us	
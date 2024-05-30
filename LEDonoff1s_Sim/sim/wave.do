onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbledonoff1s/Clk50
add wave -noupdate /tbledonoff1s/Rst
add wave -noupdate /tbledonoff1s/u_LEDonoff1s/rLED0
add wave -noupdate /tbledonoff1s/LED0
add wave -noupdate -max 70.0 /tbledonoff1s/u_LEDonoff1s/LED0Cnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 283
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {700 ps}

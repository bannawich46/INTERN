onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbswledonoff/Clk50
add wave -noupdate /tbswledonoff/Rst
add wave -noupdate /tbswledonoff/SW0
add wave -noupdate /tbswledonoff/LED0
add wave -noupdate /tbswledonoff/u_SWLEDonoff/LED0_State
add wave -noupdate /tbswledonoff/u_SWLEDonoff/Stop
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {740 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 311
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
WaveRestoreZoom {688 ps} {1017 ps}

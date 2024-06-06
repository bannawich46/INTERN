onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbprj_top/u_PRJ_TOP/RST_L
add wave -noupdate /tbprj_top/u_PRJ_TOP/CLK50
add wave -noupdate /tbprj_top/u_PRJ_TOP/wCLK1K
add wave -noupdate /tbprj_top/u_PRJ_TOP/KEY0
add wave -noupdate /tbprj_top/u_DEBOUNCE/wKEY0_LASTSTATE
add wave -noupdate /tbprj_top/u_PRJ_TOP/KEY1
add wave -noupdate /tbprj_top/u_DEBOUNCE/wKEY1_LASTSTATE
add wave -noupdate /tbprj_top/u_PRJ_TOP/wKEY0_ONESHOT
add wave -noupdate /tbprj_top/u_PRJ_TOP/wKEY1_ONESHOT
add wave -noupdate /tbprj_top/u_LEDCONTROL/wCOUNTER8BITS
add wave -noupdate /tbprj_top/u_PRJ_TOP/LED_L
add wave -noupdate /tbprj_top/u_DEBOUNCE/wCOUNTER4BITS_0
add wave -noupdate /tbprj_top/u_DEBOUNCE/wCOUNTER4BITS_0_DFF
add wave -noupdate /tbprj_top/u_DEBOUNCE/wCOUNTER4BITS_1
add wave -noupdate /tbprj_top/u_DEBOUNCE/wCOUNTER4BITS_1_DFF
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4549446 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 341
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
WaveRestoreZoom {0 ps} {10555116 ps}

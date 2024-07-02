onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /tb_prj_sim/CLK
add wave -noupdate -radix hexadecimal /tb_prj_sim/RST_L
add wave -noupdate -radix hexadecimal -childformat {{/tb_prj_sim/LED_L(7) -radix hexadecimal} {/tb_prj_sim/LED_L(6) -radix hexadecimal} {/tb_prj_sim/LED_L(5) -radix hexadecimal} {/tb_prj_sim/LED_L(4) -radix hexadecimal} {/tb_prj_sim/LED_L(3) -radix hexadecimal} {/tb_prj_sim/LED_L(2) -radix hexadecimal} {/tb_prj_sim/LED_L(1) -radix hexadecimal} {/tb_prj_sim/LED_L(0) -radix hexadecimal}} -expand -subitemconfig {/tb_prj_sim/LED_L(7) {-height 15 -radix hexadecimal} /tb_prj_sim/LED_L(6) {-height 15 -radix hexadecimal} /tb_prj_sim/LED_L(5) {-height 15 -radix hexadecimal} /tb_prj_sim/LED_L(4) {-height 15 -radix hexadecimal} /tb_prj_sim/LED_L(3) {-height 15 -radix hexadecimal} /tb_prj_sim/LED_L(2) {-height 15 -radix hexadecimal} /tb_prj_sim/LED_L(1) {-height 15 -radix hexadecimal} /tb_prj_sim/LED_L(0) {-height 15 -radix hexadecimal}} /tb_prj_sim/LED_L
add wave -noupdate -radix hexadecimal /tb_prj_sim/wADDRESS
add wave -noupdate -radix hexadecimal /tb_prj_sim/wWAITREQ
add wave -noupdate -radix hexadecimal /tb_prj_sim/wREAD
add wave -noupdate -radix hexadecimal /tb_prj_sim/wREADDATA
add wave -noupdate -radix hexadecimal /tb_prj_sim/wWRITE
add wave -noupdate -radix hexadecimal /tb_prj_sim/wWRITEDATA
add wave -noupdate -radix hexadecimal /tb_prj_sim/wRESET
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/pwm_0/iCLK_ONESHOT
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/pwm_0/wDATA
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/pwm_0/wDUTY
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/pwm_0/iFREQ
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/pwm_0/wREADDATA
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/pwm_0/wPWM_COUNTER
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/pwm_0/wPWM_SIGNAL
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/pwm_0/kDUTY_DEFAULT
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/pwm_0/kPWM_COUNTER
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {58429965 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {372867506 ps}

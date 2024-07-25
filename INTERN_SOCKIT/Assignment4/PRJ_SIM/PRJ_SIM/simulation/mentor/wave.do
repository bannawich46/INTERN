onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /tb_prj_sim/CLK
add wave -noupdate -radix hexadecimal /tb_prj_sim/RST_L
add wave -noupdate -radix hexadecimal /tb_prj_sim/wADDRESS
add wave -noupdate -radix hexadecimal /tb_prj_sim/wWAITREQ
add wave -noupdate -radix hexadecimal /tb_prj_sim/wREAD
add wave -noupdate -radix hexadecimal /tb_prj_sim/wREADDATA
add wave -noupdate -radix hexadecimal /tb_prj_sim/wWRITE
add wave -noupdate -radix hexadecimal /tb_prj_sim/wWRITEDATA
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/ocram_master_0/iADDRESS
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/ocram_master_0/iADDRESS_OCRAM
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/ocram_master_0/iCHIPSELECT
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/ocram_master_0/iREAD
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/ocram_master_0/iREAD_OCRAM
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/ocram_master_0/iWAITREQUEST
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/ocram_master_0/iWAITREQUEST_OCRAM
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/ocram_master_0/iREADDATA
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/ocram_master_0/iREADDATA_OCRAM
add wave -noupdate -radix hexadecimal /tb_prj_sim/SIM_PRJ_SIM/ocram_master_0/EXTERNAL
add wave -noupdate /tb_prj_sim/SIM_PRJ_SIM/ocram_master_0/wREAD
add wave -noupdate /tb_prj_sim/SIM_PRJ_SIM/ocram_master_0/wREAD_OCRAM
add wave -noupdate /tb_prj_sim/SIM_PRJ_SIM/ocram_master_0/iCLK_ONESHOT
add wave -noupdate /tb_prj_sim/SIM_PRJ_SIM/ocram_master_0/wREAD
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {383189613 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 180
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
WaveRestoreZoom {335724850 ps} {1034961850 ps}

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /rvsteel_tb/DUT/clock
add wave -noupdate /rvsteel_tb/DUT/reset
add wave -noupdate /rvsteel_tb/DUT/uart_rx
add wave -noupdate /rvsteel_tb/DUT/uart_tx
add wave -noupdate /rvsteel_tb/DUT/ram_instance/mem_address
add wave -noupdate /rvsteel_tb/DUT/ram_instance/mem_read_data
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device1_mem_address
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device1_mem_read_data
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device1_mem_read_request
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device1_mem_read_request_ack
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device1_mem_write_data
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device1_mem_write_strobe
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device1_mem_write_request
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device1_mem_write_request_ack
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device2_mem_address
add wave -noupdate -radix hexadecimal -childformat {{{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[31]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[30]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[29]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[28]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[27]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[26]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[25]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[24]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[23]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[22]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[21]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[20]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[19]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[18]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[17]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[16]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[15]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[14]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[13]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[12]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[11]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[10]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[9]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[8]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[7]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[6]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[5]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[4]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[3]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[2]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[1]} -radix hexadecimal} {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[0]} -radix hexadecimal}} -subitemconfig {{/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[31]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[30]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[29]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[28]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[27]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[26]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[25]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[24]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[23]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[22]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[21]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[20]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[19]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[18]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[17]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[16]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[15]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[14]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[13]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[12]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[11]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[10]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[9]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[8]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[7]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[6]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[5]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[4]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[3]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[2]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[1]} {-radix hexadecimal} {/rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data[0]} {-radix hexadecimal}} /rvsteel_tb/DUT/system_bus_instance/device2_mem_read_data
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device2_mem_read_request
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device2_mem_read_request_ack
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device2_mem_write_data
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device2_mem_write_strobe
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device2_mem_write_request
add wave -noupdate /rvsteel_tb/DUT/system_bus_instance/device2_mem_write_request_ack
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2186700 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 647
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
configure wave -timelineunits ns
update
WaveRestoreZoom {2162300 ps} {2359200 ps}

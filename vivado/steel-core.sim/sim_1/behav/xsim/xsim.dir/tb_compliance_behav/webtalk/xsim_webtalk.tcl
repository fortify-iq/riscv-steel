webtalk_init -webtalk_dir /home/rafa/ufrgs/steel-core/vivado/steel-core.sim/sim_1/behav/xsim/xsim.dir/tb_compliance_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Fri Jul 31 01:04:01 2020" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2019.2 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2708876" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "LIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "ea05a64d-1aaf-406f-8212-47d50bbbd5ca" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "b8561a63f69e41d98a2e12d383a11daf" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "4" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Ubuntu" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Ubuntu 20.04.1 LTS" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-3537U CPU @ 2.00GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "1236.542 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "8.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "1001 us" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "4" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "2.97_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "120708_KB" -context "xsim\\usage"
webtalk_transmit -clientid 1990662878 -regid "" -xml /home/rafa/ufrgs/steel-core/vivado/steel-core.sim/sim_1/behav/xsim/xsim.dir/tb_compliance_behav/webtalk/usage_statistics_ext_xsim.xml -html /home/rafa/ufrgs/steel-core/vivado/steel-core.sim/sim_1/behav/xsim/xsim.dir/tb_compliance_behav/webtalk/usage_statistics_ext_xsim.html -wdm /home/rafa/ufrgs/steel-core/vivado/steel-core.sim/sim_1/behav/xsim/xsim.dir/tb_compliance_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate

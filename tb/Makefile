PKG_SRC=
SRC=
SRC_SV=

ROOT_PATH=./..
SHA2_CORE_PATH=./../../design/FortiMAC/rtl



SRC+="$(ROOT_PATH)/ip/ram-memory.v"
SRC+="$(ROOT_PATH)/ip/rvsteel-core.v"
SRC+="$(ROOT_PATH)/ip/rvsteel-soc.v"
SRC+="$(ROOT_PATH)/ip/system-bus.v"
SRC+="$(ROOT_PATH)/ip/uart.v"

SRC_SV+="$(SHA2_CORE_PATH)/pkg/sha2_pkg.sv"
SRC_SV+="$(SHA2_CORE_PATH)/pkg/fortimac_base_pkg.sv"
SRC_SV+="$(SHA2_CORE_PATH)/pkg/fortimac_s32_pkg.sv"
SRC_SV+="$(SHA2_CORE_PATH)/pkg/fortimac_s64_pkg.sv"

SRC_SV+="$(SHA2_CORE_PATH)/src/interface_core_logic.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/APB_slave_adapter.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/sha2_top_apb.sv"

SRC_SV+="$(SHA2_CORE_PATH)/src/sha2_top.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/sha2_control_core.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/sha2_prot_core.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/sha2_prot_core.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/round.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/round_s64.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/data_prep_core.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/data_expansion_core.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/delay_line.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/sha2_unprot_core.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/lfsr_counter.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/prot_counter.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/s32_protected_fsm.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/s64_protected_fsm.sv"
SRC_SV+="$(SHA2_CORE_PATH)/src/ones_counter.sv"

SRC_SV+="$(ROOT_PATH)/tb/rvsteel_tb.sv"


all: round

clean:
	vdel -all

#	vlog $(PKG_SRC)

compile_all:
	vlib work
	vlog +define+EXTIF +define+VSIM -sv $(SRC_SV)
	vlog +define+EXTIF +define+VSIM $(SRC)

top: compile_all
	vsim +define+EXTIF +define+VSIM -gui -quiet work.rvsteel_tb -do "rvsteel_tb.do" -do "run -all"

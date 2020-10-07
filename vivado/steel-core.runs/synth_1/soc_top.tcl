# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 1
set_param xicom.use_bs_reader 1
set_msg_config  -id {Constraints 18-5210}  -string {{WARNING: [Constraints 18-5210] No constraints selected for write.
Resolution: This message can indicate that there are no constraints for the design, or it can indicate that the used_in flags are set such that the constraints are ignored. This later case is used when running synth_design to not write synthesis constraints to the resulting checkpoint. Instead, project constraints are read when the synthesized design is opened.}}  -suppress 
set_msg_config  -id {filemgmt 56-3}  -string {{WARNING: [filemgmt 56-3] Board Part Repository Path: Could not find the directory '/root/.Xilinx/Vivado/2019.1/xhub/board_store'.}}  -suppress 
set_msg_config  -id {Board 49-44}  -string {{WARNING: [Board 49-44] Exception: boost::filesystem::status: Permission denied: "/root/.Xilinx/Vivado/2019.1/xhub/board_store"}}  -suppress 
set_msg_config  -id {IP_Flow 19-4067}  -string {{WARNING: [IP_Flow 19-4067] Ignoring invalid widget type specified checkbox.Providing a default widget}}  -suppress 
set_msg_config  -id {filemgmt 56-12}  -string {{WARNING: [filemgmt 56-12] File '/home/rafa/ufrgs/steel-core/soc/bench/tb_gpio.v' cannot be added to the project because it already exists in the project, skipping this file}}  -suppress 
set_msg_config  -id {USF-XSim-62}  -string {{ERROR: [USF-XSim-62] 'elaborate' step failed with error(s). Please check the Tcl console output or '/home/rafa/ufrgs/steel-core/vivado/steel-core.sim/sim_1/behav/xsim/elaborate.log' file for more information.}}  -suppress 
set_msg_config  -id {Vivado 12-4473}  -string {{ERROR: [Vivado 12-4473] Detected error while running simulation. Please correct the issue and retry this operation.}}  -suppress 
set_msg_config  -id {filemgmt 56-3}  -string {{WARNING: [filemgmt 56-3] IPUserFilesDir: Could not find the directory '/home/rafa/ufrgs/steel-core/vivado/steel-core.ip_user_files'.}}  -suppress 
set_msg_config  -id {Synth 8-6841}  -string {{WARNING: [Synth 8-6841] Block RAM (mem/ram_reg) originally specified as a Byte Wide Write Enable RAM cannot take advantage of ByteWide feature and is implemented with single write enable per RAM due to following reason.
(address width (13) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.)}}  -suppress 
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/rafa/ufrgs/steel-core/vivado/steel-core.cache/wt [current_project]
set_property parent.project_path /home/rafa/ufrgs/steel-core/vivado/steel-core.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/rafa/ufrgs/steel-core/vivado/steel-core.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_mem {
  /home/rafa/ufrgs/steel-core/compliance/I-RF_x0-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-xor.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-lh.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-sltiu.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-bne.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-ori.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-add.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-addi.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-jal.mem
  /home/rafa/ufrgs/steel-core/compliance/I-ECALL-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-slli.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-xori.mem
  /home/rafa/ufrgs/steel-core/compliance/I-IO-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-LW-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-XOR-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-ANDI-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-SRLI-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-SLTI-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-SLTU-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-simple.mem
  /home/rafa/ufrgs/steel-core/compliance/I-LHU-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-OR-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-slt.mem
  /home/rafa/ufrgs/steel-core/compliance/I-EBREAK-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-SRAI-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-LBU-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-slti.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-sw.mem
  /home/rafa/ufrgs/steel-core/compliance/I-NOP-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-SB-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-andi.mem
  /home/rafa/ufrgs/steel-core/compliance/I-BEQ-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-SUB-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-blt.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-sra.mem
  /home/rafa/ufrgs/steel-core/compliance/I-RF_width-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-SLT-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-and.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-beq.mem
  /home/rafa/ufrgs/steel-core/compliance/I-LUI-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-DELAY_SLOTS-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-sh.mem
  /home/rafa/ufrgs/steel-core/compliance/I-SLTIU-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-bge.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-sub.mem
  /home/rafa/ufrgs/steel-core/compliance/I-ORI-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-bltu.mem
  /home/rafa/ufrgs/steel-core/compliance/I-JAL-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-jalr.mem
  /home/rafa/ufrgs/steel-core/compliance/I-JALR-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-SRA-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-XORI-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-SLL-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-SH-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-LB-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-lw.mem
  /home/rafa/ufrgs/steel-core/compliance/I-LH-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-ENDIANESS-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-lb.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-lhu.mem
  /home/rafa/ufrgs/steel-core/compliance/I-BGEU-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-lbu.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-sll.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-srli.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-lui.mem
  /home/rafa/ufrgs/steel-core/compliance/I-RF_size-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-or.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-srl.mem
  /home/rafa/ufrgs/steel-core/compliance/I-SRL-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-ADD-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-srai.mem
  /home/rafa/ufrgs/steel-core/compliance/I-SW-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-auipc.mem
  /home/rafa/ufrgs/steel-core/compliance/I-MISALIGN_JMP-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-ADDI-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-bgeu.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-fence_i.mem
  /home/rafa/ufrgs/steel-core/compliance/I-BNE-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-AUIPC-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-sb.mem
  /home/rafa/ufrgs/steel-core/compliance/I-BGE-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-MISALIGN_LDST-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-BLT-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-SLLI-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-AND-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-BLTU-01.elf.mem
  /home/rafa/ufrgs/steel-core/riscv-tests/rv32ui-p-sltu.mem
  /home/rafa/ufrgs/steel-core/compliance/I-CSRRC-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-CSRRSI-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-CSRRCI-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-CSRRWI-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-CSRRS-01.elf.mem
  /home/rafa/ufrgs/steel-core/compliance/I-CSRRW-01.elf.mem
  /home/rafa/ufrgs/steel-core/util/hello.mem
  /home/rafa/ufrgs/steel-core/util/coremark.mem
}
read_verilog -library xil_defaultlib {
  /home/rafa/ufrgs/steel-core/rtl/alu.v
  /home/rafa/ufrgs/steel-core/rtl/branch_unit.v
  /home/rafa/ufrgs/steel-core/soc/bus_arbiter.v
  /home/rafa/ufrgs/steel-core/rtl/csr_file.v
  /home/rafa/ufrgs/steel-core/rtl/decoder.v
  /home/rafa/ufrgs/steel-core/rtl/imm_generator.v
  /home/rafa/ufrgs/steel-core/rtl/integer_file.v
  /home/rafa/ufrgs/steel-core/rtl/load_unit.v
  /home/rafa/ufrgs/steel-core/rtl/machine_control.v
  /home/rafa/ufrgs/steel-core/soc/ram.v
  /home/rafa/ufrgs/steel-core/rtl/steel_top.v
  /home/rafa/ufrgs/steel-core/rtl/store_unit.v
  /home/rafa/ufrgs/steel-core/soc/uart_tx.v
  /home/rafa/ufrgs/steel-core/soc/soc_top.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/rafa/ufrgs/steel-core/vivado/steel-core.srcs/constrs_1/new/contraints.xdc
set_property used_in_implementation false [get_files /home/rafa/ufrgs/steel-core/vivado/steel-core.srcs/constrs_1/new/contraints.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top soc_top -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef soc_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file soc_top_utilization_synth.rpt -pb soc_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
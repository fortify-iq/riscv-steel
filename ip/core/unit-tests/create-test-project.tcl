cd [file normalize [file dirname [info script]]]
set memory_init_files {./programs/add-01.hex ./programs/addi-01.hex ./programs/and-01.hex ./programs/andi-01.hex ./programs/auipc-01.hex ./programs/beq-01.hex ./programs/bge-01.hex ./programs/bgeu-01.hex ./programs/blt-01.hex ./programs/bltu-01.hex ./programs/bne-01.hex ./programs/ebreak.hex ./programs/ecall.hex ./programs/fence-01.hex ./programs/jal-01.hex ./programs/jalr-01.hex ./programs/lb-align-01.hex ./programs/lbu-align-01.hex ./programs/lh-align-01.hex ./programs/lhu-align-01.hex ./programs/lui-01.hex ./programs/lw-align-01.hex ./programs/misalign1-jalr-01.hex ./programs/misalign2-jalr-01.hex ./programs/misalign-beq-01.hex ./programs/misalign-bge-01.hex ./programs/misalign-bgeu-01.hex ./programs/misalign-blt-01.hex ./programs/misalign-bltu-01.hex ./programs/misalign-bne-01.hex ./programs/misalign-jal-01.hex ./programs/misalign-lh-01.hex ./programs/misalign-lhu-01.hex ./programs/misalign-lw-01.hex ./programs/misalign-sh-01.hex ./programs/misalign-sw-01.hex ./programs/or-01.hex ./programs/ori-01.hex ./programs/sb-align-01.hex ./programs/sh-align-01.hex ./programs/sll-01.hex ./programs/slli-01.hex ./programs/slt-01.hex ./programs/slti-01.hex ./programs/sltiu-01.hex ./programs/sltu-01.hex ./programs/sra-01.hex ./programs/srai-01.hex ./programs/srl-01.hex ./programs/srli-01.hex ./programs/sub-01.hex ./programs/sw-align-01.hex ./programs/xor-01.hex ./programs/xori-01.hex ./references/add-01.reference.hex ./references/addi-01.reference.hex ./references/and-01.reference.hex ./references/andi-01.reference.hex ./references/auipc-01.reference.hex ./references/beq-01.reference.hex ./references/bge-01.reference.hex ./references/bgeu-01.reference.hex ./references/blt-01.reference.hex ./references/bltu-01.reference.hex ./references/bne-01.reference.hex ./references/ebreak.reference.hex ./references/ecall.reference.hex ./references/fence-01.reference.hex ./references/jal-01.reference.hex ./references/jalr-01.reference.hex ./references/lb-align-01.reference.hex ./references/lbu-align-01.reference.hex ./references/lh-align-01.reference.hex ./references/lhu-align-01.reference.hex ./references/lui-01.reference.hex ./references/lw-align-01.reference.hex ./references/misalign1-jalr-01.reference.hex ./references/misalign2-jalr-01.reference.hex ./references/misalign-beq-01.reference.hex ./references/misalign-bge-01.reference.hex ./references/misalign-bgeu-01.reference.hex ./references/misalign-blt-01.reference.hex ./references/misalign-bltu-01.reference.hex ./references/misalign-bne-01.reference.hex ./references/misalign-jal-01.reference.hex ./references/misalign-lh-01.reference.hex ./references/misalign-lhu-01.reference.hex ./references/misalign-lw-01.reference.hex ./references/misalign-sh-01.reference.hex ./references/misalign-sw-01.reference.hex ./references/or-01.reference.hex ./references/ori-01.reference.hex ./references/sb-align-01.reference.hex ./references/sh-align-01.reference.hex ./references/sll-01.reference.hex ./references/slli-01.reference.hex ./references/slt-01.reference.hex ./references/slti-01.reference.hex ./references/sltiu-01.reference.hex ./references/sltu-01.reference.hex ./references/sra-01.reference.hex ./references/srai-01.reference.hex ./references/srl-01.reference.hex ./references/srli-01.reference.hex ./references/sub-01.reference.hex ./references/sw-align-01.reference.hex ./references/xor-01.reference.hex ./references/xori-01.reference.hex}
create_project test-project ./test-project -part xc7a35ticsg324-1L -force
set_property simulator_language Verilog [current_project]
add_files -norecurse $memory_init_files
add_files -norecurse {../rvsteel-core.v ./rvsteel-core-unit-tests.v}
move_files -fileset sim_1 [get_files ./rvsteel-core-unit-tests.v]
set_property file_type {Memory Initialization Files} [get_files $memory_init_files]
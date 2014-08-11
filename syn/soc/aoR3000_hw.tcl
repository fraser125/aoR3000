# TCL File Generated by Component Editor 14.0
# Sun Aug 10 02:45:47 CEST 2014
# DO NOT MODIFY


# 
# aoR3000 "aoR3000" v1.0
#  2014.08.10.02:45:47
# 
# 

# 
# request TCL package from ACDS 14.0
# 
package require -exact qsys 14.0


# 
# module aoR3000
# 
set_module_property DESCRIPTION ""
set_module_property NAME aoR3000
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME aoR3000
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL aoR3000
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file aoR3000.v VERILOG PATH ../../rtl/aoR3000.v TOP_LEVEL_FILE
add_fileset_file defines.v VERILOG PATH ../../rtl/defines.v
add_fileset_file block_cp0.v VERILOG PATH ../../rtl/block/block_cp0.v
add_fileset_file block_long_div.v VERILOG PATH ../../rtl/block/block_long_div.v
add_fileset_file block_muldiv.v VERILOG PATH ../../rtl/block/block_muldiv.v
add_fileset_file block_shift.v VERILOG PATH ../../rtl/block/block_shift.v
add_fileset_file memory_avalon.v VERILOG PATH ../../rtl/memory/memory_avalon.v
add_fileset_file memory_data_tlb_micro.v VERILOG PATH ../../rtl/memory/memory_data_tlb_micro.v
add_fileset_file memory_instr_tlb_micro.v VERILOG PATH ../../rtl/memory/memory_instr_tlb_micro.v
add_fileset_file memory_ram.v VERILOG PATH ../../rtl/memory/memory_ram.v
add_fileset_file memory_tlb_ram.v VERILOG PATH ../../rtl/memory/memory_tlb_ram.v
add_fileset_file model_fifo.v VERILOG PATH ../../rtl/model/model_fifo.v
add_fileset_file model_mult.v VERILOG PATH ../../rtl/model/model_mult.v
add_fileset_file model_simple_dual_ram.v VERILOG PATH ../../rtl/model/model_simple_dual_ram.v
add_fileset_file model_true_dual_ram.v VERILOG PATH ../../rtl/model/model_true_dual_ram.v
add_fileset_file pipeline_exe.v VERILOG PATH ../../rtl/pipeline/pipeline_exe.v
add_fileset_file pipeline_if.v VERILOG PATH ../../rtl/pipeline/pipeline_if.v
add_fileset_file pipeline_mem.v VERILOG PATH ../../rtl/pipeline/pipeline_mem.v
add_fileset_file pipeline_rf.v VERILOG PATH ../../rtl/pipeline/pipeline_rf.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point avalon_master_0
# 
add_interface avalon_master_0 avalon start
set_interface_property avalon_master_0 addressUnits SYMBOLS
set_interface_property avalon_master_0 associatedClock clock
set_interface_property avalon_master_0 associatedReset reset_sink
set_interface_property avalon_master_0 bitsPerSymbol 8
set_interface_property avalon_master_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_master_0 burstcountUnits WORDS
set_interface_property avalon_master_0 doStreamReads false
set_interface_property avalon_master_0 doStreamWrites false
set_interface_property avalon_master_0 holdTime 0
set_interface_property avalon_master_0 linewrapBursts false
set_interface_property avalon_master_0 maximumPendingReadTransactions 0
set_interface_property avalon_master_0 maximumPendingWriteTransactions 0
set_interface_property avalon_master_0 readLatency 0
set_interface_property avalon_master_0 readWaitTime 1
set_interface_property avalon_master_0 setupTime 0
set_interface_property avalon_master_0 timingUnits Cycles
set_interface_property avalon_master_0 writeWaitTime 0
set_interface_property avalon_master_0 ENABLED true
set_interface_property avalon_master_0 EXPORT_OF ""
set_interface_property avalon_master_0 PORT_NAME_MAP ""
set_interface_property avalon_master_0 CMSIS_SVD_VARIABLES ""
set_interface_property avalon_master_0 SVD_ADDRESS_GROUP ""

add_interface_port avalon_master_0 avm_writedata writedata Output 32
add_interface_port avalon_master_0 avm_byteenable byteenable Output 4
add_interface_port avalon_master_0 avm_burstcount burstcount Output 3
add_interface_port avalon_master_0 avm_write write Output 1
add_interface_port avalon_master_0 avm_read read Output 1
add_interface_port avalon_master_0 avm_waitrequest waitrequest Input 1
add_interface_port avalon_master_0 avm_readdatavalid readdatavalid Input 1
add_interface_port avalon_master_0 avm_readdata readdata Input 32
add_interface_port avalon_master_0 avm_address address Output 32


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink rst_n reset_n Input 1


# 
# connection point interrupt_receiver
# 
add_interface interrupt_receiver interrupt start
set_interface_property interrupt_receiver associatedAddressablePoint ""
set_interface_property interrupt_receiver associatedClock clock
set_interface_property interrupt_receiver associatedReset reset_sink
set_interface_property interrupt_receiver irqScheme INDIVIDUAL_REQUESTS
set_interface_property interrupt_receiver ENABLED true
set_interface_property interrupt_receiver EXPORT_OF ""
set_interface_property interrupt_receiver PORT_NAME_MAP ""
set_interface_property interrupt_receiver CMSIS_SVD_VARIABLES ""
set_interface_property interrupt_receiver SVD_ADDRESS_GROUP ""

add_interface_port interrupt_receiver interrupt_vector irq Input 6

# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/atharva/Work/function_gen_sw/function_gen_app_system/_ide/scripts/systemdebugger_function_gen_app_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/atharva/Work/function_gen_sw/function_gen_app_system/_ide/scripts/systemdebugger_function_gen_app_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys A7 -100T 210292B306F4A" && level==0 && jtag_device_ctx=="jsn-Nexys A7 -100T-210292B306F4A-13631093-0"}
fpga -file /home/atharva/Work/function_gen_sw/function_gen_app/_ide/bitstream/nexysA7fpga.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw /home/atharva/Work/function_gen_sw/function_gen_platform/export/function_gen_platform/hw/nexysA7fpga.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow /home/atharva/Work/function_gen_sw/function_gen_app/Debug/function_gen_app.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con

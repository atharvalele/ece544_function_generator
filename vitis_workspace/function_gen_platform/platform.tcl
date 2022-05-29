# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/atharva/Work/ece544_function_generator/vitis_workspace/function_gen_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/atharva/Work/ece544_function_generator/vitis_workspace/function_gen_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {function_gen_platform}\
-hw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}\
-proc {microblaze_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {/home/atharva/Work/ece544_function_generator/vitis_workspace}

platform write
platform generate -domains 
platform active {function_gen_platform}
platform generate

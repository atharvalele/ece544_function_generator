# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/atharva/Work/function_gen_sw/function_gen_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/atharva/Work/function_gen_sw/function_gen_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {function_gen_platform}\
-hw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}\
-proc {microblaze_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {/home/atharva/Work/function_gen_sw}

platform write
platform generate -domains 
platform active {function_gen_platform}
platform generate
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform clean
platform generate
platform active {function_gen_platform}
platform config -updatehw {/home/atharva/Downloads/nexysA7fpga.xsa}
platform generate -domains 
platform active {function_gen_platform}
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform generate -domains 
platform active {function_gen_platform}
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Downloads/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform active {function_gen_platform}
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 
platform generate -domains standalone_domain 
platform generate -domains standalone_domain 
platform active {function_gen_platform}
platform config -updatehw {/home/atharva/Work/ece544_function_generator/vivado_project/ece544_function_generator_exported/nexysA7fpga.xsa}
platform generate -domains 

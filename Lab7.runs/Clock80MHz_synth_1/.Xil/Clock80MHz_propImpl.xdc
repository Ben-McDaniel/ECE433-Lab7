set_property SRC_FILE_INFO {cfile:/home/beandog/433/ECE433-Lab7/Lab7.gen/sources_1/ip/Clock80MHz/Clock80MHz.xdc rfile:../../../Lab7.gen/sources_1/ip/Clock80MHz/Clock80MHz.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in100MHz]] 0.100

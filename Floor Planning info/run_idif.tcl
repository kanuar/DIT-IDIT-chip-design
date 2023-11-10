
set_db init_lib_search_path /home/install/FOUNDRY/digital/45nm/LIBS/lib/max/
     
set_db lef_library /home/install/FOUNDRY/digital/45nm/LIBS/lef/gsclib045.fixed.lef

set_db library  slow.lib
    
read_hdl {/home/cmos/Desktop/DSD_project_only_floor_planning/design_idif.v}

elaborate

#read_sdc ./constraints_top.sdc


#set_attribute syn_generic_effort medium
#set_attribute syn_map_effort  medium
#set_attribute syn_opt_effort  medium

syn_generic
syn_map
syn_opt

write_hdl > design_idif_netlist.v
write_sdc  > design_idif_tool.sdc
   
gui_show

report timing > design_idif_timing.rpt
report power > design_idif_power.rpt
report area > design_idif_cell.rpt
report gates > design_idif_gates.rpt

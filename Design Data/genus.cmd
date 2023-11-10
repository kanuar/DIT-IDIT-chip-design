# Cadence Genus(TM) Synthesis Solution, Version 20.11-s111_1, built Apr 26 2021 14:57:38

# Date: Tue Nov 07 00:27:50 2023
# Host: cad19 (x86_64 w/Linux 3.10.0-1160.el7.x86_64) (2cores*2cpus*1physical cpu*Intel(R) Pentium(R) CPU G3250 @ 3.20GHz 3072KB)
# OS:   Red Hat Enterprise Linux Server release 7.9 (Maipo)

write libs saed90nm_typ.lib
write_libs saed90nm_typ.lib
read_libs saed90nm_typ.lib
read_hdl idif_fft_8.v bbfly4_4.v bbfly2_4.v
elaborate
read_sdc constraints.sdc
syn_generic
syn_map
syn_opt -incremental
report_timing> idif_timing.rpt
report_area> idif_area.rpt
report_power> idif_power.rpt
write_hdl> idif_netlist.v

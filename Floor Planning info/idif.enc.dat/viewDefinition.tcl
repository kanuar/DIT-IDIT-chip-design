if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name min\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast.lib]
create_library_set -name max\
   -timing\
    [list ${::IMEX::libVar}/lib/typ/slow.lib]
create_rc_corner -name cap\
   -cap_table ${::IMEX::libVar}/mmmc/cln28hpl_1p10m+alrdl_5x2yu2yz_typical.capTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_delay_corner -name min\
   -library_set min\
   -rc_corner cap
create_delay_corner -name max\
   -library_set max\
   -rc_corner cap
create_constraint_mode -name idif\
   -sdc_files\
    [list /dev/null]
create_analysis_view -name setup -constraint_mode idif -delay_corner max
create_analysis_view -name hold -constraint_mode idif -delay_corner min
set_analysis_view -setup [list setup] -hold [list hold]

# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Wed Nov 08 00:33:15 IST 2023

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design four_fft

set_clock_gating_check -setup 0.0 

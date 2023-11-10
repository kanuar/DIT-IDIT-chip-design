
set EXTCLK "clk" ;
set_units -time 1.0ns ;
set EXTCLK_PERIOD 20.0;
create_clock -name "$EXTCLK" -period "$EXTCLK_PERIOD" -waveform "0
[expr $EXTCLK_PERIOD/2]" [get_ports clk]

set SKEW 0.200
set_clock_uncertainty $SKEW [get_clocks $EXTCLK]

set SRLATENCY 0.80
set SFLATENCY 0.75

set MINRISE  0.20
set MAXRISE  0.25
set MINFALL  0.15
set MAXFALL  0.10
set_clock_transition -rise -min $MINRISE [get_clocks $EXTCLK]
set_clock_transition -rise -max $MAXRISE [get_clocks $EXTCLK]
set_clock_transition -fall -min $MINFALL [get_clocks $EXTCLK]
set_clock_transition -fall -max $MAXFALL [get_clocks $EXTCLK]

set INPUT_DELAY 0.5
set OUTPUT_DELAY 0.5

set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports inr0]
set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports inr1]
set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports inr2]
set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports inr3]
set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports inr4]
set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports inr5]
set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports inr6]
set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports inr7]


set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports ini0]
set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports ini1]
set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports ini2]
set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports ini3]
set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports ini4]
set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports ini5]
set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports ini6]
set INPUT_DELAY 0.5
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports ini7]


set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outreal0]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outreal1]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outreal2]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outreal3]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outreal4]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outreal5]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outreal6]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outreal7]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outimag0]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outimag1]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outimag2]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outimag3]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outimag4]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outimag5]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outimag6]
set OUTPUT_DELAY 0.5
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 0.3 [get_ports outimag7]


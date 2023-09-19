set_property IOSTANDARD LVCMOS33 [get_ports {dout[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports up]
set_property PACKAGE_PIN B18 [get_ports clk]
set_property PACKAGE_PIN G17 [get_ports up]
set_property PACKAGE_PIN A18 [get_ports reset]
set_property PULLDOWN true [get_ports up]
set_property PACKAGE_PIN L3 [get_ports {dout[4]}]
set_property PACKAGE_PIN A16 [get_ports {dout[3]}]
set_property PACKAGE_PIN K3 [get_ports {dout[2]}]
set_property PACKAGE_PIN C15 [get_ports {dout[1]}]
set_property PACKAGE_PIN M3 [get_ports {dout[5]}]

set_property PACKAGE_PIN H1 [get_ports {dout[0]}]



set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]
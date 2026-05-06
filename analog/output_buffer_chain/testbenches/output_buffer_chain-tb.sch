v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 330 -650 1130 -250 {flags=graph
y1=-0.028
y2=1.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=buf_out
color=4
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=tran
rawfile=$netlist_dir/output_buffer_chain-tb.raw}
N 500 -190 500 -170 {lab=vp}
N 710 -220 710 -200 {lab=vdd}
N 420 -190 420 -170 {lab=vdd}
N 760 -160 780 -160 {lab=#net1}
C {analog/output_buffer_chain/output_buffer_chain.sym} 540 -40 0 0 {name=x1}
C {gnd.sym} 500 -110 0 0 {name=l1 lab=0}
C {lab_pin.sym} 420 -190 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {vsource.sym} 500 -140 0 0 {name=V1 value="pulse 0 1.2 0 1n 1n 10n 20n" savecurrent=false}
C {gnd.sym} 710 -120 0 0 {name=l2 lab=0}
C {lab_pin.sym} 710 -220 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {vsource.sym} 420 -140 0 0 {name=V2 value=1.6 savecurrent=false}
C {gnd.sym} 420 -110 0 0 {name=l3 lab=0}
C {lab_pin.sym} 500 -190 0 0 {name=p4 sig_type=std_logic lab=vp}
C {lab_pin.sym} 660 -160 0 0 {name=p3 sig_type=std_logic lab=vp}
C {title.sym} 160 0 0 0 {name=l6 author="Dennis Hunter"}
C {simulator_commands_shown.sym} 0 -450 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"
      }
C {devices/launcher.sym} 80 -80 0 0 {name=h3
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 80 -120 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {lab_wire.sym} 780 -160 0 1 {name=p7 sig_type=std_logic lab=buf_out}
C {code.sym} 0 -270 0 0 {name=transient only_toplevel=false value="
.param temp=27
.control
tran 0.2n 100n
* Propagation delay
* input threshold = 0.6 V  (50% of 1.2 V input swing)
* output threshold = 0.8 V (50% of 1.6 V supply)
meas tran tplh trig v(vp)      val=0.6 td=20n rise=1 \\
+               targ v(buf_out) val=0.8 td=20n rise=1

meas tran tphl trig v(vp)      val=0.6 td=20n fall=1 \\
+               targ v(buf_out) val=0.8 td=20n fall=1

* Output rise / fall time (10%..90% of 1.6 V)
meas tran trise_out trig v(buf_out) val=0.16 td=20n rise=1 \\
+                    targ v(buf_out) val=1.44 td=20n rise=1

meas tran tfall_out trig v(buf_out) val=1.44 td=20n fall=1 \\
+                    targ v(buf_out) val=0.16 td=20n fall=1

write output_buffer_chain-tb.raw
.endc
"}

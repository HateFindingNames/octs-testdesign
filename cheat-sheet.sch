v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 760 -520 760 -40 {}
L 4 1000 -410 1070 -440 {}
B 4 1070 -600 1420 -440 {fill=false}
T {lab-pin} 680 -520 0 0 0.3 0.3 {}
T {GND} 700 -480 0 0 0.3 0.3 {}
T {vpulse} 690 -410 0 0 0.3 0.3 {}
T {vsource} 690 -320 0 0 0.3 0.3 {}
T {ipin} 710 -260 0 0 0.3 0.3 {}
T {opin} 710 -230 0 0 0.3 0.3 {}
T {iopin} 710 -200 0 0 0.3 0.3 {}
T {Name 	Parameter 	Default Value 	Units
V1 	Initial value 	- 	V , A
V2 	Pulsed value 	- 	V , A
TD 	Delay time 	0.0 	sec
TR 	Rise time 	TSTEP 	sec
TF 	Fall time 	TSTEP 	sec
PW 	Pulse width 	TSTOP 	sec
PER 	Period 	TSTOP 	sec
NP 	Number of Pulses *) 	unlimited 	-} 1070 -600 0 0 0.3 0.3 {}
T {vpwl (piece wise linear)} 560 -140 0 0 0.3 0.3 {}
T {General form:
PWL(T1 V1 <T2 V2 T3 V3 T4 V4 ...>) <r=value> <td=value>
Examples:
VCLOCK 7 5 PWL(0 -7 10NS -7 11NS -3 17NS -3 18NS -7 50NS -7) + r=0 td=15NS

Each pair of values ( T i , V i ) specifies that the value of the source is V i (in Volts or Amps) at time = T i . The value of the source at
intermediate values of time is determined by using linear interpolation on the input values. The parameter r determines a repeat time point.
If r is set to -1 or is not given, the whole sequence of values ( T i , V i ) is issued once only, then the output stays at its final value.
If r = 0, the whole sequence from time 0 to time Tn is repeated forever. If r = 10ns, the sequence between 10ns and 50ns is repeated forever.
The r value has to be one of the time points T1 to T(n-1) of the PWL sequence, not the last point Tn. If td is given, the whole PWL sequence
is delayed by the value of td. Please note that for now r and td are available only with the voltage source, not with the current source.} 1010 -160 0 0 0.1 0.1 {}
C {title.sym} 160 0 0 0 {name=l6 author="Dennis Hunter"}
C {simulator_commands_shown.sym} 0 -520 0 0 {
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
C {devices/launcher.sym} 70 -70 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {devices/launcher.sym} 70 -120 0 0 {name=h3
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 70 -170 0 0 {name=h4
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
C {simulator_commands_shown.sym} 0 -350 0 0 {name="NGSPICE transient"
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.control
tran tsteps tstop [tstart]
write <filename>.raw
.endc
"}
C {simulator_commands_shown.sym} 280 -350 0 0 {name="NGSPICE operating-point"
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.control
op
write <filename>.raw
.endc
"}
C {gnd.sym} 800 -470 0 0 {name=l1 lab=0}
C {lab_pin.sym} 820 -510 0 0 {name=p1 sig_type=std_logic lab=xxx}
C {vsource.sym} 800 -400 0 0 {name=V1 value="pulse v1 v2 td tr tf pw per np" savecurrent=false}
C {vsource.sym} 800 -310 0 0 {name=V2 value=3 savecurrent=false}
C {ipin.sym} 830 -250 0 0 {name=p2 lab=xxx}
C {opin.sym} 780 -220 0 0 {name=p3 lab=xxx}
C {iopin.sym} 780 -190 0 0 {name=p4 lab=xxx}
C {vsource.sym} 800 -130 0 0 {name=V3 value="pwl T1 V1 T2 V2 ... r= td=" savecurrent=false}
C {launcher.sym} 350 -170 0 0 {name=h1
descr=RunNGRUN.py
tclcommand="
xschem netlist

set sch_file [xschem get current_name]
set sch_dir [file dirname $sch_file]
set sch_base [file rootname [file tail $sch_file]]
set netlist [file join $sch_dir simulation $\{sch_base\}.spice]

set script $env(DESIGNS)/ngrun.py
set logfile [file join $sch_dir simulation ngrun.log]

if \{![file exists $netlist]\} \{
    tk_messageBox -icon error -message \\"Netlist not found:\\n$netlist\\"
    return
\}

if \{![file exists $script]\} \{
    tk_messageBox -icon error -message \\"Python script not found:\\n$script\\"
    return
\}

exec \{*\}$terminal -lc -u8 -hold -e sh -c \{
  python3 -u "$1" -k -j 1 "$2" 2>&1 | tee "$3"
\} sh $script $netlist $logfile &
"}

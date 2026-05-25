v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1270 -1070 2070 -670 {flags=graph
y1=1.8e+08
y2=4.6e+08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-20
x2=140
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=table
autoload=1
hilight_wave=-1
vlegend=0
legend=1
mode=Line
color=4
node=frequency
}
B 2 450 -1070 1250 -670 {flags=graph
y1=-0.02
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.6011839e-09
x2=8.5371916e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
color=4
node=tran5.v(ro_raw)
rawfile=$netlist_dir/temp-sens-core_temp-sweep_temp25_wave.raw}
T {tcleval(deltaf: [to_eng [expr [xschem raw value frequency [expr [xschem raw points 0] - 1] 0] - [xschem raw value frequency 0 0]]]Hz)} 1280 -650 0 0 0.4 0.4 {floater=1}
N 130 -120 130 -110 {lab=0}
N 110 -110 130 -110 {lab=0}
N 90 -120 90 -110 {lab=0}
N 110 -110 110 -100 {lab=0}
N 90 -110 110 -110 {lab=0}
N 90 -190 90 -180 {lab=VDD}
N 130 -190 130 -180 {lab=VDD}
N 90 -190 130 -190 {lab=VDD}
N 110 -380 110 -360 {lab=VDD}
N 280 -420 290 -420 {lab=VDD}
N 280 -430 280 -420 {lab=VDD}
N 280 -360 290 -360 {lab=0}
N 280 -360 280 -350 {lab=0}
N 530 -390 570 -390 {lab=ro_raw}
N 280 -400 290 -400 {lab=VDD}
N 280 -420 280 -400 {lab=VDD}
N 280 -380 290 -380 {lab=0}
N 280 -380 280 -360 {lab=0}
C {vsource.sym} 110 -330 0 0 {name=Vdd value=1.2 savecurrent=false}
C {title.sym} 160 0 0 0 {name=l6 author="Dennis Hunter"}
C {devices/launcher.sym} 60 -790 0 0 {name=h3
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file rootname [file tail temp-sens-core_temp-sweep_temp25_wave]].raw
xschem raw_read $netlist_dir/[file rootname [file tail temp-sens-core_temp-sweep]].raw
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 60 -830 0 0 {name=h4
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

# run netlist and simulation
xschem netlist
simulate
"}
C {sg13cmos5l_pr/ntap1.sym} 90 -150 2 0 {name=R3
model=ntap1
spiceprefix=X
w=0.78e-6
l=0.78e-6
}
C {sg13cmos5l_pr/ptap1.sym} 130 -150 0 0 {name=R4
model=ptap1
spiceprefix=X
w=0.78e-6
l=0.78e-6
}
C {gnd.sym} 110 -100 0 0 {name=l3 lab=0}
C {gnd.sym} 110 -300 0 0 {name=l1 lab=0}
C {vdd.sym} 110 -380 0 0 {name=l9 lab=VDD}
C {vdd.sym} 110 -190 0 0 {name=l10 lab=VDD}
C {lab_pin.sym} 570 -390 2 0 {name=p7 sig_type=std_logic lab=ro_raw}
C {simulator_commands.sym} 0 -990 0 0 {name=temp_sweep
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.option rshunt=1e12
.option klu
.param cpar=0
.param lstarv=0.18u
.control
set num_threads = 8

let temp_start = -20
let temp_stop = 140
let temp_delta = 10

* Create one plot that will hold the sweep results
setplot new
set scratch = $curplot

compose temperature start=$&temp_start stop=$&temp_stop step=$&temp_delta
let frequency = vector(length(temperature))

let i = 0
let tcur = temp_start
while tcur <= temp_stop
  option temp = $&tcur

  tran 0.05n 300n

  meas tran tperiod \\
  + TRIG v(ro_raw) VAL=0.6 RISE=2 TD=50n \\
  + TARG v(ro_raw) VAL=0.6 RISE=3 TD=50n

  * Remember the just-created tran plot
  set dt = $curplot

  * Go back to the scratch plot before touching loop variables
  setplot $scratch

  if tcur = 20
    write temp-sens-core_temp-sweep_temp25_wave.raw \{$dt\}.time \{$dt\}.v(ro_raw)
*    let time25 = \{$dt\}.time
*    let ro_raw25 = \{$dt\}.v(ro_raw)
  end

  let frequency[i] = 1/\{$dt\}.tperiod

  let tcur = tcur + temp_delta
  let i = i+1
end

setplot $scratch

settype temp-sweep temperature
settype frequency frequency
setscale frequency temperature
write temp-sens-core_temp-sweep.raw temperature frequency

*settype time time25
*settype voltage ro_raw25
*setscale ro_raw25 time25
*write temp25_wave.raw time25 ro_raw25
.endc
"
}
C {simulator_commands.sym} 0 -1170 0 0 {name=Libs_Ngspice1
simulator=ngspice
only_toplevel=false 
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {simulator_commands.sym} 130 -1170 0 0 {name=tff_includes
simulator=ngspice
only_toplevel=false 
value="
.include /foss/pdks/ihp-sg13cmos5l/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice
"
}
C {vdd.sym} 280 -430 0 0 {name=l2 lab=VDD}
C {gnd.sym} 280 -350 0 0 {name=l4 lab=0}
C {analog/temp-sens-core/temp_sens_core.sym} 410 -400 0 0 {name=x1 lstarv=0.26u cpar=4f}

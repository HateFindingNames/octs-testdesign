v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1270 -1070 2070 -670 {flags=graph
y1=27000000
y2=34000000
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=15
x2=35
divx=10
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=1
hilight_wave=-1
vlegend=0
legend=1
mode=Line
hcursor1_y=1.3713607e+08
color=4
node=frequency
rawfile=$netlist_dir/temp-sweep_sens-core.raw
sweep=temperature}
B 2 450 -1070 1250 -670 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=15
x2=35
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
sweep=time25
color=4
node=ro_raw25
rawfile=$netlist_dir/temp25_wave.raw}
T {tcleval(deltaf: [to_eng [expr [xschem raw value frequency [expr [xschem raw points 0] - 1] 0] - [xschem raw value frequency 0 0]]]Hz)} 1280 -650 0 0 0.4 0.4 {floater=1}
N 1230 -500 1250 -500 {lab=vgp}
N 1230 -550 1230 -500 {lab=vgp}
N 1710 -550 1870 -550 {lab=vgp}
N 1870 -550 1870 -500 {lab=vgp}
N 1870 -500 1890 -500 {lab=vgp}
N 1710 -500 1730 -500 {lab=vgp}
N 1710 -550 1710 -500 {lab=vgp}
N 1550 -550 1710 -550 {lab=vgp}
N 1550 -500 1570 -500 {lab=vgp}
N 1550 -550 1550 -500 {lab=vgp}
N 1390 -550 1550 -550 {lab=vgp}
N 1390 -500 1410 -500 {lab=vgp}
N 1390 -550 1390 -500 {lab=vgp}
N 1230 -550 1390 -550 {lab=vgp}
N 1770 -570 1930 -570 {lab=VDD}
N 1290 -570 1290 -500 {lab=VDD}
N 1450 -570 1450 -500 {lab=VDD}
N 1290 -570 1450 -570 {lab=VDD}
N 1610 -570 1610 -500 {lab=VDD}
N 1450 -570 1610 -570 {lab=VDD}
N 1770 -570 1770 -500 {lab=VDD}
N 1610 -570 1770 -570 {lab=VDD}
N 1770 -110 1930 -110 {lab=0}
N 1290 -110 1450 -110 {lab=0}
N 1450 -110 1610 -110 {lab=0}
N 1610 -110 1770 -110 {lab=0}
N 1110 -500 1230 -500 {lab=vgp}
N 1110 -510 1110 -500 {lab=vgp}
N 1060 -500 1110 -500 {lab=vgp}
N 1060 -500 1060 -460 {lab=vgp}
N 1050 -500 1060 -500 {lab=vgp}
N 1010 -460 1060 -460 {lab=vgp}
N 1010 -470 1010 -460 {lab=vgp}
N 1230 -180 1250 -180 {lab=vgn}
N 1110 -180 1110 -170 {lab=vgn}
N 1060 -220 1060 -180 {lab=vgn}
N 1060 -180 1110 -180 {lab=vgn}
N 1010 -570 1010 -500 {lab=VDD}
N 1110 -570 1290 -570 {lab=VDD}
N 1010 -460 1010 -450 {lab=vgp}
N 1050 -180 1060 -180 {lab=vgn}
N 1010 -220 1010 -210 {lab=vgn}
N 1010 -220 1060 -220 {lab=vgn}
N 1110 -110 1290 -110 {lab=0}
N 1930 -180 1930 -110 {lab=0}
N 1770 -180 1770 -110 {lab=0}
N 1610 -180 1610 -110 {lab=0}
N 1450 -180 1450 -110 {lab=0}
N 1290 -180 1290 -110 {lab=0}
N 1110 -570 1110 -540 {lab=VDD}
N 1010 -570 1110 -570 {lab=VDD}
N 1010 -180 1010 -110 {lab=0}
N 1110 -140 1110 -110 {lab=0}
N 1010 -110 1110 -110 {lab=0}
N 1230 -180 1230 -130 {lab=vgn}
N 1110 -180 1230 -180 {lab=vgn}
N 1710 -130 1870 -130 {lab=vgn}
N 1870 -180 1870 -130 {lab=vgn}
N 1870 -180 1890 -180 {lab=vgn}
N 1710 -180 1730 -180 {lab=vgn}
N 1710 -180 1710 -130 {lab=vgn}
N 1550 -130 1710 -130 {lab=vgn}
N 1550 -180 1570 -180 {lab=vgn}
N 1550 -180 1550 -130 {lab=vgn}
N 1390 -130 1550 -130 {lab=vgn}
N 1390 -180 1410 -180 {lab=vgn}
N 1390 -180 1390 -130 {lab=vgn}
N 1230 -130 1390 -130 {lab=vgn}
N 1010 -240 1010 -220 {lab=vgn}
N 130 -120 130 -110 {lab=0}
N 110 -110 130 -110 {lab=0}
N 90 -120 90 -110 {lab=0}
N 110 -110 110 -100 {lab=0}
N 90 -110 110 -110 {lab=0}
N 90 -190 90 -180 {lab=VDD}
N 130 -190 130 -180 {lab=VDD}
N 90 -190 130 -190 {lab=VDD}
N 1930 -570 1930 -500 {lab=VDD}
N 1870 -550 2030 -550 {lab=vgp}
N 2030 -550 2030 -500 {lab=vgp}
N 2030 -500 2050 -500 {lab=vgp}
N 1930 -570 2090 -570 {lab=VDD}
N 1930 -110 2090 -110 {lab=0}
N 2090 -180 2090 -110 {lab=0}
N 1870 -130 2030 -130 {lab=vgn}
N 2030 -180 2030 -130 {lab=vgn}
N 2030 -180 2050 -180 {lab=vgn}
N 2090 -570 2090 -500 {lab=VDD}
N 2030 -550 2190 -550 {lab=vgp}
N 2190 -550 2190 -500 {lab=vgp}
N 2190 -500 2210 -500 {lab=vgp}
N 2090 -570 2250 -570 {lab=VDD}
N 2090 -110 2250 -110 {lab=0}
N 2250 -180 2250 -110 {lab=0}
N 2030 -130 2190 -130 {lab=vgn}
N 2190 -180 2190 -130 {lab=vgn}
N 2190 -180 2210 -180 {lab=vgn}
N 2250 -570 2250 -500 {lab=VDD}
N 1010 -110 1010 -90 {lab=0}
N 1290 -470 1290 -380 {lab=#net1}
N 1450 -470 1450 -380 {lab=#net2}
N 1610 -470 1610 -380 {lab=#net3}
N 1770 -470 1770 -380 {lab=#net4}
N 1930 -470 1930 -380 {lab=#net5}
N 2090 -470 2090 -380 {lab=#net6}
N 2250 -470 2250 -380 {lab=#net7}
N 1290 -300 1290 -210 {lab=#net8}
N 1340 -340 1400 -340 {lab=#net9}
N 1500 -340 1560 -340 {lab=#net10}
N 1450 -300 1450 -210 {lab=#net11}
N 1660 -340 1720 -340 {lab=#net12}
N 1610 -300 1610 -210 {lab=#net13}
N 1820 -340 1880 -340 {lab=#net14}
N 1770 -300 1770 -210 {lab=#net15}
N 1930 -300 1930 -210 {lab=#net16}
N 2140 -340 2200 -340 {lab=#net17}
N 2090 -300 2090 -210 {lab=#net18}
N 2320 -340 2420 -340 {lab=ro_raw}
N 2250 -300 2250 -210 {lab=#net19}
N 1200 -340 1240 -340 {lab=ro_raw}
N 1200 -340 1200 -260 {lab=ro_raw}
N 2320 -340 2320 -260 {lab=ro_raw}
N 2300 -340 2320 -340 {lab=ro_raw}
N 640 -460 640 -440 {lab=#net20}
N 640 -230 640 -210 {lab=#net21}
N 810 -270 970 -270 {lab=#net21}
N 640 -230 810 -230 {lab=#net21}
N 640 -250 640 -230 {lab=#net21}
N 1980 -340 2040 -340 {lab=#net22}
N 1200 -260 2320 -260 {lab=ro_raw}
N 810 -420 970 -420 {lab=#net20}
N 640 -460 810 -460 {lab=#net20}
N 640 -480 640 -460 {lab=#net20}
N 810 -270 810 -230 {lab=#net21}
N 810 -460 810 -420 {lab=#net20}
N 920 -540 1070 -540 {lab=VDD}
N 920 -140 1070 -140 {lab=0}
N 1010 -270 1110 -270 {lab=0}
N 1110 -270 1110 -260 {lab=0}
N 1010 -420 1110 -420 {lab=VDD}
N 1110 -430 1110 -420 {lab=VDD}
N 110 -380 110 -360 {lab=VDD}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 1270 -500 0 0 {name=M1
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 1090 -540 0 0 {name=M21
l=0.13u
w=10u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1090 -140 0 0 {name=M22
l=0.13u
w=10u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 1030 -500 0 1 {name=M23
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1030 -180 0 1 {name=M24
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 1150 -500 2 0 {name=p4 sig_type=std_logic lab=vgp}
C {lab_wire.sym} 1180 -180 0 0 {name=p5 sig_type=std_logic lab=vgn}
C {vsource.sym} 110 -330 0 0 {name=Vdd value=1.2 savecurrent=false}
C {gnd.sym} 1010 -90 0 0 {name=l4 lab=0}
C {title.sym} 160 0 0 0 {name=l6 author="Dennis Hunter"}
C {devices/launcher.sym} 60 -790 0 0 {name=h3
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file rootname [file tail temp25_wave]].raw
xschem raw_read $netlist_dir/[file rootname [file tail temp-sweep_sens-core]].raw
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

# Create FET .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {gnd.sym} 1010 -390 0 0 {name=l2 lab=0}
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
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1270 -180 0 0 {name=M4
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 1430 -500 0 0 {name=M5
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1430 -180 0 0 {name=M8
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 1590 -500 0 0 {name=M9
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1590 -180 0 0 {name=M12
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 1750 -500 0 0 {name=M13
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1750 -180 0 0 {name=M16
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 1910 -500 0 0 {name=M17
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1910 -180 0 0 {name=M20
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 2070 -500 0 0 {name=M25
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 2070 -180 0 0 {name=M28
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 2230 -500 0 0 {name=M29
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 2230 -180 0 0 {name=M32
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {vdd.sym} 1010 -570 0 0 {name=l7 lab=VDD}
C {vdd.sym} 110 -380 0 0 {name=l9 lab=VDD}
C {vdd.sym} 110 -190 0 0 {name=l10 lab=VDD}
C {vdd.sym} 1010 -300 0 0 {name=l11 lab=VDD}
C {analog/inverter/inverter.sym} 1240 -340 0 0 {name=x1}
C {analog/inverter/inverter.sym} 1400 -340 0 0 {name=x2}
C {analog/inverter/inverter.sym} 1560 -340 0 0 {name=x3}
C {analog/inverter/inverter.sym} 1720 -340 0 0 {name=x4}
C {analog/inverter/inverter.sym} 1880 -340 0 0 {name=x5}
C {analog/inverter/inverter.sym} 2040 -340 0 0 {name=x6}
C {analog/inverter/inverter.sym} 2200 -340 0 0 {name=x7}
C {lab_pin.sym} 2420 -340 2 0 {name=p7 sig_type=std_logic lab=ro_raw}
C {simulator_commands.sym} 0 -990 0 0 {name=temp_sweep
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.option rshunt=1e12
.option klu
.control

let temp_start = 15
let temp_stop = 35
let temp_delta = 5

* Create one plot that will hold the sweep results
setplot new
set scratch = $curplot

compose temperature start=$&temp_start stop=$&temp_stop step=$&temp_delta
let frequency = vector(length(temperature))

let i = 0
let tcur = temp_start
while $&tcur le $&temp_stop
  option temp = $&tcur

  tran 0.05n 300n

  meas tran tperiod \\
  + TRIG v(ro_raw) VAL=0.6 RISE=2 TD=50n \\
  + TARG v(ro_raw) VAL=0.6 RISE=3 TD=50n

  * Remember the just-created tran plot
  set dt = $curplot

  * Go back to the scratch plot before touching loop variables
  setplot $scratch

  let frequency[i] = 1/\{$dt\}.tperiod

  if $&tcur eq 25
    let time25 = \{$dt\}.time
    let ro_raw25 = \{$dt\}.v(ro_raw)
  end

  let tcur = tcur + temp_delta
  let i = i+1
end

setplot $scratch

settype temp-sweep temperature
settype frequency frequency
setscale frequency temperature
write temp-sweep_sens-core.raw temperature frequency

settype time time25
settype voltage ro_raw25
setscale ro_raw25 time25
write temp25_wave.raw time25 ro_raw25
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
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 990 -420 0 0 {name=M2
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 990 -270 0 0 {name=M3
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/rsil.sym} 640 -510 0 0 {name=R6
w=0.5e-6
l=75e-6
model=rsil
body=sub!
spiceprefix=X
b=0
m=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( (@b + 1)* @l + ( 1.081*( @w + 1.0e-8 ) + 0.18e-6 )*@b ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13cmos5l_pr/rsil.sym} 640 -410 0 0 {name=R7
w=0.5e-6
l=10e-6
model=rsil
body=sub!
spiceprefix=X
b=0
m=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( (@b + 1)* @l + ( 1.081*( @w + 1.0e-8 ) + 0.18e-6 )*@b ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {gnd.sym} 640 -380 0 0 {name=l8 lab=0}
C {vdd.sym} 640 -540 0 0 {name=l13 lab=VDD}
C {sg13cmos5l_pr/rsil.sym} 640 -180 0 0 {name=R1
w=0.5e-6
l=75e-6
model=rsil
body=sub!
spiceprefix=X
b=0
m=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( (@b + 1)* @l + ( 1.081*( @w + 1.0e-8 ) + 0.18e-6 )*@b ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13cmos5l_pr/rsil.sym} 640 -280 0 0 {name=R2
w=0.5e-6
l=10e-6
model=rsil
body=sub!
spiceprefix=X
b=0
m=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( (@b + 1)* @l + ( 1.081*( @w + 1.0e-8 ) + 0.18e-6 )*@b ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {gnd.sym} 640 -150 0 0 {name=l14 lab=0}
C {vdd.sym} 640 -310 0 0 {name=l15 lab=VDD}
C {capa.sym} 1370 -310 0 0 {name=C1
m=1
value=0.2f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1370 -280 0 0 {name=l16 lab=0}
C {capa.sym} 1530 -310 0 0 {name=C2
m=1
value=0.2f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1530 -280 0 0 {name=l17 lab=0}
C {capa.sym} 1690 -310 0 0 {name=C3
m=1
value=0.2f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1690 -280 0 0 {name=l18 lab=0}
C {capa.sym} 1850 -310 0 0 {name=C4
m=1
value=0.2f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1850 -280 0 0 {name=l19 lab=0}
C {capa.sym} 2010 -310 0 0 {name=C5
m=1
value=0.2f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 2010 -280 0 0 {name=l20 lab=0}
C {capa.sym} 2170 -310 0 0 {name=C6
m=1
value=0.2f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 2170 -280 0 0 {name=l21 lab=0}
C {capa.sym} 2360 -310 0 0 {name=C7
m=1
value=0.2f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 2360 -280 0 0 {name=l22 lab=0}
C {simulator_commands.sym} 130 -1170 0 0 {name=tff_includes
simulator=ngspice
only_toplevel=false 
value="
.include /foss/pdks/ihp-sg13cmos5l/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice
"
}
C {gnd.sym} 1110 -260 0 0 {name=l24 lab=0}
C {vdd.sym} 1110 -430 0 0 {name=l25 lab=VDD}
C {vdd.sym} 920 -540 0 0 {name=l26 lab=VDD}
C {gnd.sym} 920 -140 0 0 {name=l27 lab=0}

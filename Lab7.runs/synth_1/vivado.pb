
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/beandog/433/ECE433-Lab7/Lab7.srcs/utils_1/imports/synth_1/Lab7I2Cphase1fall2024JJS.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2^
\/home/beandog/433/ECE433-Lab7/Lab7.srcs/utils_1/imports/synth_1/Lab7I2Cphase1fall2024JJS.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
t
Command: %s
53*	vivadotcl2C
Asynth_design -top Lab7I2Cphase2fall2024JJS -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
99664Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2042.656 ; gain = 406.684 ; free physical = 312 ; free virtual = 6040
h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2	
ShiftIn2
wire2Y
U/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/I2C_DataUnit.v2
238@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2

ShiftOut2
wire2Y
U/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/I2C_DataUnit.v2
238@Z8-11241h px� 
�
Pparameter '%s' becomes localparam in '%s' with formal parameter declaration list7326*oasys2	
Divider2
Refreshing7SegNexysA72b
^/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/Refreshing7SegNexysA7.v2
138@Z8-11065h px� 
�
Pparameter '%s' becomes localparam in '%s' with formal parameter declaration list7326*oasys2
NumberOfBits2
Refreshing7SegNexysA72b
^/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/Refreshing7SegNexysA7.v2
148@Z8-11065h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
StartReading2
wire2e
a/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/Lab7I2Cphase2fall2024JJS.v2
258@Z8-11241h px� 
�
synthesizing module '%s'%s4497*oasys2
Lab7I2Cphase2fall2024JJS2
 2e
a/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/Lab7I2Cphase2fall2024JJS.v2
168@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

Clock80MHz2
 2j
f/home/beandog/433/ECE433-Lab7/Lab7.runs/synth_1/.Xil/Vivado-99597-archlinux/realtime/Clock80MHz_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Clock80MHz2
 2
02
12j
f/home/beandog/433/ECE433-Lab7/Lab7.runs/synth_1/.Xil/Vivado-99597-archlinux/realtime/Clock80MHz_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PositiveClockedOneShot2
 2c
_/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/PositiveClockedOneShot.v2
78@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PositiveClockedOneShot2
 2
02
12c
_/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/PositiveClockedOneShot.v2
78@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ReadTMP101fall2024JJS2
 2b
^/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/ReadTMP101fall2024JJS.v2
128@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
I2C_BaudRateGenerator2
 2b
^/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/I2C_BaudRateGenerator.v2
108@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
I2C_BaudRateGenerator2
 2
02
12b
^/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/I2C_BaudRateGenerator.v2
108@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
I2C_Host_Controller_phase2_temp2
 2l
h/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/I2C_Host_Controller_phase2_temp.v2
208@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
DelayLoop2024Fall2
 2^
Z/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/DelayLoop2024Fall.v2
98@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DelayLoop2024Fall2
 2
02
12^
Z/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/DelayLoop2024Fall.v2
98@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
NegativeClockedOneShot2
 2c
_/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/NegativeClockedOneShot.v2
78@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
NegativeClockedOneShot2
 2
02
12c
_/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/NegativeClockedOneShot.v2
78@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
I2C_Host_Controller_phase2_temp2
 2
02
12l
h/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/I2C_Host_Controller_phase2_temp.v2
208@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
I2C_DataUnit2
 2Y
U/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/I2C_DataUnit.v2
118@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
I2C_ShiftRegister2
 2^
Z/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/I2C_ShiftRegister.v2
88@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
I2C_ShiftRegister2
 2
02
12^
Z/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/I2C_ShiftRegister.v2
88@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
I2C_SDAmodule2
 2Z
V/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/I2C_SDAmodule.v2
68@Z8-6157h px� 
�
default block is never used226*oasys2Z
V/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/I2C_SDAmodule.v2
158@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
I2C_SDAmodule2
 2
02
12Z
V/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/I2C_SDAmodule.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
I2C_DataUnit2
 2
02
12Y
U/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/I2C_DataUnit.v2
118@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ReadTMP101fall2024JJS2
 2
02
12b
^/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/ReadTMP101fall2024JJS.v2
128@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
OneTemperatureConverter2
 2d
`/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/OneTemperatureConverter.v2
108@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OneTemperatureConverter2
 2
02
12d
`/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/OneTemperatureConverter.v2
108@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BCDto7Segment2
 2Z
V/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/BCDto7Segment.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BCDto7Segment2
 2
02
12Z
V/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/BCDto7Segment.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
SevenSegDriverNexysA72
 2b
^/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/SevenSegDriverNexysA7.v2
88@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
DisplayMuxNexysA72
 2^
Z/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/DisplayMuxNexysA7.v2
88@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DisplayMuxNexysA72
 2
02
12^
Z/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/DisplayMuxNexysA7.v2
88@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Refreshing7SegNexysA72
 2b
^/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/Refreshing7SegNexysA7.v2
78@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Refreshing7SegNexysA72
 2
02
12b
^/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/Refreshing7SegNexysA7.v2
78@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SevenSegDriverNexysA72
 2
02
12b
^/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/SevenSegDriverNexysA7.v2
88@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Lab7I2Cphase2fall2024JJS2
 2
02
12e
a/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/Lab7I2Cphase2fall2024JJS.v2
168@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

ACKbit_reg2l
h/home/beandog/433/ECE433-Lab7/Lab7.srcs/sources_1/imports/433lab7part2/I2C_Host_Controller_phase2_temp.v2
558@Z8-6014h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2118.625 ; gain = 482.652 ; free physical = 227 ; free virtual = 5956
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2133.469 ; gain = 497.496 ; free physical = 225 ; free virtual = 5954
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2133.469 ; gain = 497.496 ; free physical = 225 ; free virtual = 5954
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012

00:00:002

2133.4692
0.0002
2252
5954Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2g
c/home/beandog/433/ECE433-Lab7/Lab7.gen/sources_1/ip/Clock80MHz/Clock80MHz/Clock80MHz_in_context.xdc2
SystemClockUnit	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2g
c/home/beandog/433/ECE433-Lab7/Lab7.gen/sources_1/ip/Clock80MHz/Clock80MHz/Clock80MHz_in_context.xdc2
SystemClockUnit	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2g
c/home/beandog/433/ECE433-Lab7/Lab7.srcs/constrs_1/imports/433lab7part2/Lab7I2Cphase2fall2024JJS.xdc8Z20-179h px� 
�
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2
git2g
c/home/beandog/433/ECE433-Lab7/Lab7.srcs/constrs_1/imports/433lab7part2/Lab7I2Cphase2fall2024JJS.xdc2
208@Z20-1307h px� 
�
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2
hgasasdfjlasdl2g
c/home/beandog/433/ECE433-Lab7/Lab7.srcs/constrs_1/imports/433lab7part2/Lab7I2Cphase2fall2024JJS.xdc2
218@Z20-1307h px� 
�
Finished Parsing XDC File [%s]
178*designutils2g
c/home/beandog/433/ECE433-Lab7/Lab7.srcs/constrs_1/imports/433lab7part2/Lab7I2Cphase2fall2024JJS.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2e
c/home/beandog/433/ECE433-Lab7/Lab7.srcs/constrs_1/imports/433lab7part2/Lab7I2Cphase2fall2024JJS.xdc2,
*.Xil/Lab7I2Cphase2fall2024JJS_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2295.2192
0.0002
2052
5934Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.012

00:00:002

2295.2542
0.0002
2052
5934Z17-722h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 168 ; free virtual = 5898
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 168 ; free virtual = 5898
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 168 ; free virtual = 5898
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
z
3inferred FSM for state register '%s' in module '%s'802*oasys2
	State_reg2
PositiveClockedOneShotZ8-802h px� 
z
3inferred FSM for state register '%s' in module '%s'802*oasys2
	State_reg2
NegativeClockedOneShotZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	State_reg2!
I2C_Host_Controller_phase2_tempZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_               WaitState |                               00 |                               11
h p
x
� 
y
%s
*synth2a
_            InitialState |                               01 |                               00
h p
x
� 
y
%s
*synth2a
_            OneShotState |                               10 |                               01
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	State_reg2

sequential2
PositiveClockedOneShotZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_            InitialState |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_            OneShotState |                               01 |                               01
h p
x
� 
y
%s
*synth2a
_               WaitState |                               10 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	State_reg2

sequential2
NegativeClockedOneShotZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_            InitialState |                      00000000001 |                             0000
h p
x
� 
y
%s
*synth2a
_              StartState |                      00000000010 |                             0001
h p
x
� 
y
%s
*synth2a
_               LoadState |                      00000000100 |                             0010
h p
x
� 
y
%s
*synth2a
_              WriteState |                      00000001000 |                             0011
h p
x
� 
y
%s
*synth2a
_   AcknowledgeWriteState |                      00000010000 |                             0100
h p
x
� 
y
%s
*synth2a
_              CheckState |                      00000100000 |                             0101
h p
x
� 
y
%s
*synth2a
_               ReadState |                      00001000000 |                             0110
h p
x
� 
y
%s
*synth2a
_               WaitState |                      00010000000 |                             0111
h p
x
� 
y
%s
*synth2a
_    AcknowledgeReadState |                      00100000000 |                             1000
h p
x
� 
y
%s
*synth2a
_            TransitState |                      01000000000 |                             1001
h p
x
� 
y
%s
*synth2a
_               StopState |                      10000000000 |                             1010
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	State_reg2	
one-hot2!
I2C_Host_Controller_phase2_tempZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 164 ; free virtual = 5895
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               20 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 10    
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 9     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	  11 Input   11 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  11 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   9 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    2 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  11 Input    1 Bit        Muxes := 8     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 284 ; free virtual = 5921
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 282 ; free virtual = 5918
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 276 ; free virtual = 5912
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 275 ; free virtual = 5912
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 243 ; free virtual = 5880
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 243 ; free virtual = 5880
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 243 ; free virtual = 5880
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 243 ; free virtual = 5880
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 243 ; free virtual = 5880
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 243 ; free virtual = 5880
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|      |BlackBox name |Instances |
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|1     |Clock80MHz    |         1|
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
6
%s*synth2
+------+-----------+------+
h px� 
6
%s*synth2
|      |Cell       |Count |
h px� 
6
%s*synth2
+------+-----------+------+
h px� 
6
%s*synth2
|1     |Clock80MHz |     1|
h px� 
6
%s*synth2
|2     |CARRY4     |    19|
h px� 
6
%s*synth2
|3     |LUT1       |     4|
h px� 
6
%s*synth2
|4     |LUT2       |    35|
h px� 
6
%s*synth2
|5     |LUT3       |    42|
h px� 
6
%s*synth2
|6     |LUT4       |    27|
h px� 
6
%s*synth2
|7     |LUT5       |    10|
h px� 
6
%s*synth2
|8     |LUT6       |    76|
h px� 
6
%s*synth2
|9     |FDCE       |     6|
h px� 
6
%s*synth2
|10    |FDRE       |   128|
h px� 
6
%s*synth2
|11    |FDSE       |     1|
h px� 
6
%s*synth2
|12    |IBUF       |     6|
h px� 
6
%s*synth2
|13    |IOBUF      |     1|
h px� 
6
%s*synth2
|14    |OBUF       |    27|
h px� 
6
%s*synth2
+------+-----------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 243 ; free virtual = 5880
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 2295.254 ; gain = 497.496 ; free physical = 243 ; free virtual = 5880
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2295.254 ; gain = 659.281 ; free physical = 243 ; free virtual = 5880
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2295.2542
0.0002
5142
6167Z17-722h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
20Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2295.2542
0.0002
5142
6167Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2Y
W  A total of 1 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 1 instance 
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

e3e0b6bfZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
632
42
22
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:252

00:00:232

2295.2542	
973.2892
5142
6167Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1863.743; main = 1508.553; forked = 402.928Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2=
;(MB): overall = 3247.254; main = 2295.223; forked = 984.047Z17-2834h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.012

2319.2302
0.0002
5132
6167Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2N
L/home/beandog/433/ECE433-Lab7/Lab7.runs/synth_1/Lab7I2Cphase2fall2024JJS.dcpZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_utilization -file Lab7I2Cphase2fall2024JJS_utilization_synth.rpt -pb Lab7I2Cphase2fall2024JJS_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Nov  4 12:03:59 2024Z17-206h px� 


End Record
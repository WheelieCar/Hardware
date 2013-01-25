v 20110115 2
C 40000 40000 0 0 0 title-B.sym
T 50000 40700 9 10 1 0 0 0 1
ATMega328
C 45700 43700 1 0 0 ATmega328-PDIP.sym
{
T 46000 48300 5 10 1 1 0 0 1
device=ATmega328-PDIP
T 46000 48500 5 10 0 0 0 0 1
footprint=DIP28N
T 51000 48300 5 10 1 1 0 0 1
refdes=U1
}
N 44200 44300 45700 44300 4
N 45700 44000 44900 44000 4
N 44900 44000 44900 43600 4
C 44500 46400 1 0 0 vcc-1.sym
{
T 44500 46400 5 10 0 0 0 0 1
netname=VCC
}
N 54000 45500 54000 45800 4
C 44400 42700 1 90 0 capacitor-1.sym
{
T 43700 42900 5 10 0 0 90 0 1
device=CAPACITOR
T 43800 43300 5 10 1 1 180 0 1
refdes=C1
T 43500 42900 5 10 0 0 90 0 1
symversion=0.1
T 43900 43100 5 10 1 1 180 0 1
value=22pF
T 44400 42700 5 10 0 0 0 0 1
footprint=RCY100
}
C 44200 43500 1 0 0 crystal-1.sym
{
T 44400 44000 5 10 0 0 0 0 1
device=CRYSTAL
T 44400 43800 5 10 1 1 0 0 1
refdes=U2
T 44400 44200 5 10 0 0 0 0 1
symversion=0.1
T 44300 43300 5 10 1 1 0 0 1
value=16MHz
T 44200 43500 5 10 0 1 0 0 1
footprint=crystal
}
N 44200 44300 44200 43600 4
C 45100 42700 1 90 0 capacitor-1.sym
{
T 44400 42900 5 10 0 0 90 0 1
device=CAPACITOR
T 45500 43300 5 10 1 1 180 0 1
refdes=C2
T 44200 42900 5 10 0 0 90 0 1
symversion=0.1
T 45600 43100 5 10 1 1 180 0 1
value=22pF
T 45100 42700 5 10 0 0 0 0 1
footprint=RCY100
}
N 44200 42700 44900 42700 4
C 44500 42400 1 0 0 gnd-1.sym
{
T 44500 42400 5 10 0 0 0 0 1
netname=GND
}
C 53800 45800 1 0 0 vcc-1.sym
{
T 53800 45800 5 10 0 0 0 0 1
netname=VCC
}
N 54000 45800 51500 45800 4
C 51900 46000 1 90 0 gnd-1.sym
{
T 51900 46000 5 10 0 0 90 0 1
netname=GND
}
N 51600 46100 51500 46100 4
N 54000 45500 51500 45500 4
C 44600 45200 1 0 0 gnd-1.sym
{
T 44600 45200 5 10 0 0 0 0 1
netname=GND
}
C 53800 45500 1 270 0 capacitor-1.sym
{
T 54500 45300 5 10 0 1 270 0 1
device=CAPACITOR
T 53600 45200 5 10 1 1 180 0 1
refdes=C3
T 54700 45300 5 10 0 0 270 0 1
symversion=0.1
T 53300 44900 5 10 1 1 0 0 1
value=0.1µF
T 53800 45500 5 10 0 0 0 0 1
footprint=RCY100
}
C 53900 44300 1 0 0 gnd-1.sym
{
T 53900 44300 5 10 0 0 0 0 1
netname=GND
}
N 45700 45800 45300 45800 4
N 45300 46400 44700 46400 4
N 44900 48000 44900 47800 4
N 43900 48000 43900 47800 4
N 44900 47900 45700 47900 4
C 45300 50200 1 270 0 resistor-1.sym
{
T 45700 49900 5 10 0 0 270 0 1
device=RESISTOR
T 45600 49800 5 10 1 1 0 0 1
refdes=R1
T 45600 49600 5 10 1 1 0 0 1
value=10K
T 45300 50200 5 10 0 1 0 0 1
footprint=ACY400
}
C 45200 50200 1 0 0 vcc-1.sym
N 45400 49300 45400 47900 4
C 43600 47600 1 0 0 gnd-1.sym
{
T 43600 47600 5 10 0 0 0 0 1
netname=GND
}
N 43700 47900 43900 47900 4
C 52700 42000 1 0 0 AVR_ISP10.sym
{
T 53500 43600 5 10 1 1 0 6 1
refdes=J1
T 53000 43850 5 10 0 0 0 0 1
device=HEADER10
T 53000 44050 5 10 0 0 0 0 1
footprint=HEADER10_2
}
N 51500 44900 52200 44900 4
N 52200 44900 52200 42100 4
N 52200 42100 52700 42100 4
N 51500 45200 52500 45200 4
N 52500 45200 52500 42400 4
N 52500 42400 52700 42400 4
N 51500 44600 52000 44600 4
N 52000 44600 52000 43300 4
N 52000 43300 52700 43300 4
C 54100 43300 1 0 0 vcc-1.sym
{
T 54100 43300 5 10 0 0 0 0 1
netname=VCC
}
N 54100 43300 54300 43300 4
N 54100 43000 54100 41900 4
C 54000 41600 1 0 0 gnd-1.sym
{
T 54000 41600 5 10 0 0 0 0 1
netname=GND
}
C 44500 46400 1 270 0 capacitor-1.sym
{
T 45200 46200 5 10 0 1 270 0 1
device=CAPACITOR
T 44300 46100 5 10 1 1 180 0 1
refdes=C4
T 45400 46200 5 10 0 0 270 0 1
symversion=0.1
T 44000 45800 5 10 1 1 0 0 1
value=0.1µF
T 44500 46400 5 10 0 0 0 0 1
footprint=RCY100
}
N 45300 46400 45300 46100 4
N 45300 46100 45700 46100 4
N 45300 45800 45300 45500 4
N 45300 45500 44700 45500 4
C 46200 49200 1 180 0 input-1.sym
{
T 46200 48900 5 10 0 0 180 0 1
device=INPUT
T 45700 49300 5 10 1 1 0 0 1
netname=RESET
}
C 51900 42800 1 180 0 output-1.sym
{
T 51800 42500 5 10 0 0 180 0 1
device=OUTPUT
T 51200 42900 5 10 1 1 0 0 1
netname=RESET
}
N 51900 42700 52700 42700 4
C 43900 47800 1 0 0 switch.sym
{
T 43450 47600 5 10 0 0 0 0 1
footprint=switch
T 44300 48350 5 10 1 1 0 0 1
refdes=S1
}

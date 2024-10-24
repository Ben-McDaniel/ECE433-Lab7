transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Clock80MHz  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Clock80MHz xil_defaultlib.glbl

do {Clock80MHz.udo}

run 1000ns

endsim

quit -force

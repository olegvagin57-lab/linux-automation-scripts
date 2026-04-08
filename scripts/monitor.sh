#!/bin/bash

TIMESTOP=$( date '+%F %T')
RAMSTAT=$( free -m | grep Mem | awk {'print "Total Mem: " $2" Mib; Available Mem: "$3" Mib; Percent of usage: " $3/$2*100 '} )
CPUSTAT=$( top -b -n 1 | grep "%Cpu" | sed -E 's/.*, *([0-9.]+) id.*/\1/' | awk {'print "Percent of CPU load: " 100-$1"%"'} )

echo "$TIMESTOP"
echo "$RAMSTAT"
echo "$CPUSTAT"


#!/bin/bash

wall "  #Architecture: $(uname -a)
        #CPU physical: $(cat /proc/cpuinfo | grep "physical id" | sort | uniq | wc -l)
        #vCPU: $(cat /proc/cpuinfo | grep processor | wc -l)
        #Memory Usage: $(free | grep Mem | awk '{printf("%d/%dMB (%.2f)", $3 / 1000, $2 / 1000, $3/$2 * 100.0)}')
        #Disk Usage: 
        #CPU load:
        #Last boot: $(who -b | awk '{print $3,$4}' )
        #LVM use: 
        #Connections TCP: $(netstat -nat | grep | awk '{print $6}')
        #User log: $(users | wc -l)
        #Network: IP $(hostname -I) ($(ifconfig | grep ether | awk '{print $2}'))
        #Sudo: 
    "
#!/bin/bash

wall "  #Architecture: $(uname -a)
        #CPU physical: $(cat /proc/cpuinfo | grep "physical id" | sort | uniq | wc -l)
        #vCPU: $(cat /proc/cpuinfo | grep processor | wc -l)
        #Memory Usage: $(free | grep Mem | awk '{printf("%d/%dMB (%.2f)", $3 / 1000, $2 / 1000, $3/$2 * 100.0)}')
        #Disk Usage: $(df -h --total | grep total | awk '{printf("%d/%dGb (%.2f)", $3, $2, $3/$2 * 100.0)}')
        #CPU load: $(top -bn1 | grep Cpu | awk '{printf("%.1f%%", "2$ + 4$")}')
        #Last boot: $(who -b | awk '{print $3,$4}' )
        #LVM use: $([ $(lsblk | grep lvm | wc -l) -eq 0 ] && echo no || echo yes)
        #Connections TCP: $(ss -neopt state established | wc -l)
        #User log: $(users | wc -l)
        #Network: IP $(hostname -I) ($(ip link show | grep ether | awk '{print $2}'))
        #Sudo: $(journalctl _COMM=sudo | grep COMMAND | wc -l) cmd
    "
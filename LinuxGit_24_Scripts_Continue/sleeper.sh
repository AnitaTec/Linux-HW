#!/bin/bash


for i in {1..1}
 do
   date '+%H-%M-%S'
ps -ef | tail -n +2 | wc -l

  sleep .5
done

cat /proc/cpuinfo > /opt/280225-wdm/Anita_T/CpuInfo.txt

cat /etc/os-release | grep -w "NAME=" >> /opt/280225-wdm/Anita_T/CpuInfo.txt

cat /etc/os-release | grep -w "NAME=" | awk -F '"' '{print $2}' >> /opt/280225-wdm/Anita_T/CpuInfo.txt


mkdir -p /opt/280225-wdm/Anita_T/HMWAnita 

for i in {50..100}
do
echo " " > "/opt/280225-wdm/Anita_T/HMWAnita/$i.txt"
done

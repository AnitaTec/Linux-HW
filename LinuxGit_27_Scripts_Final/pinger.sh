#!/bin/bash
#
address=$1
max_ping_time=100
max_filures=3

count=0

while :
do
   if ping -c 1 $address > /dev/null
     then
          count=0
          time=$(ping -c 1 $address | awk -F 'time=' 'NR=2 {print $2}' |sed 's/ ms//' | awk -F '.' ' {print$1}') 
           if ((time >  max_ping_time))
             then
              echo -e "ping time is over $max_ping_time: $time ms"
          fi
         else
        ((count++))
       if ((count > max_filures))
          then
          echo "Ping failed $address"
          exit 1
      fi
   fi
  sleep 1
done

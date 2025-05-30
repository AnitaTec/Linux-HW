#!/bin/bash

directory="/opt/280225-wdm/Anita_T"


for i in {1..10}
do
  touch "${directory}/${i}_$(date +"%d.%m.%y")"
done

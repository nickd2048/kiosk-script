#!/bin/bash

# Repeat every second for 70 times to poweroff attached monitor
for i in {1..70}
  do
     DISPLAY=:0 xset dpms force off
     sleep 1
done

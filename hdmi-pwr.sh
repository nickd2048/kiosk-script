#!/bin/sh

# Enable and disable HDMI output
# sudo apt install cec-utils

# usage:
# hdmi-pwr.sh on 
# hdmi-pwr.sh off
# hdmi-pwr.sh status

is_off ()
{
        #tvservice -s | grep "TV is off" >/dev/null
        echo "pow 0" | cec-client -s -d 1 | grep "power status: standby" >/dev/null
}

case $1 in
        off)
                #tvservice -o
                echo "as" | cec-client -s -d 1
                echo "standby 0" | cec-client -s -d 1 >/dev/null
        ;;
        on)
                if is_off
                then
                        #tvservice -p
                        #curr_vt=`fgconsole`
                        #if [ "$curr_vt" = "1" ]
                        #then
                        #       chvt 2
                        #       chvt 1
                        #else
                        #       chvt 1
                        #       chvt "$curr_vt"
                        #fi
                        echo "on 0" | cec-client -s -d 1 >/dev/null
                        echo "as" | cec-client -s -d 1
                fi
        ;;
        status)
                if is_off
                then
                        echo off
                else
                        echo on
                fi
        ;;
        *)
                echo "Usage: $0 on|off|status" >&2
                exit 2
        ;;
esac

exit 0

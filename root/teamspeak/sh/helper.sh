#!/bin/sh
get_oldest_log(){
        OLDEST_LOG=$(ls -tr1 /teamspeak/logs |  head -n 1)
        echo "${OLDEST_LOG}"
}

#Wait a few seconds
sleep 30s

old_log=""

#Get, how many cycles we need, til 1 week is over
interval_check_update=$(( 604800 / INTERVAL )) 
#Counter for the cycles
counter_check_update=0

while :
do
        if [ "$ONLY_LOG_FILES" != 1 ]
        then
                working_log=$(get_oldest_log)

                while [ -n "$working_log" ]
                do
                        cat /teamspeak/logs/"$working_log"
                        mv /teamspeak/logs/"$working_log" /teamspeak/save/logs/"$working_log"

                        working_log=$(get_oldest_log)
                done
        fi

        #Section for the 1 week update checker
        if [ $counter_check_update -gt $interval_check_update ]
        then
                . /teamspeak/sh/check_update.sh
                counter_check_update=0
        fi

        counter_check_update=$((counter_check_update+1))
        sleep "$INTERVAL"s
done
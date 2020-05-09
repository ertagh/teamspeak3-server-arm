#!/bin/sh
get_oldest_log(){
        OLDEST_LOG=$(ls -tr1 /teamspeak/logs |  head -n 1)
        echo "${OLDEST_LOG}"
}

old_log=""

#Get, how many cycles we need, til 1 week is over
interval_check_update=$(( 604800 / INTERVAL )) 
#Counter for the cycles
counter_check_update=0

#Let the server run until everything necessary has been generated
if [ -e "/teamspeak/init" ]
then
        while :
        do
                if [ -d "/teamspeak/logs" ]
                then
                        STOP=$(find /teamspeak/logs/ -name "*1.log" | head -n 1)
                        if [ -n "$STOP" ]
                        then
                                ps -ef | grep "qemu-i386 ./ts3server" | grep -v grep | awk '{print $2}' | xargs kill
                                exit
                        fi
                fi
                sleep 2s    
        done
fi

#Wait a few seconds
sleep 30s


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

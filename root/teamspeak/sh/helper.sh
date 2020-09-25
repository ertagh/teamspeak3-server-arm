#!/bin/sh

#Let the server run until everything necessary has been generated
if [ "$INIFILE" != 0 ]
then
    #No ini file is present
    if ! [ -e "/teamspeak/save/ts3server.ini" ]
    then
        current_timestamp=$(date "+%s")
        while :
        do
                #ini file has been generated
                if [ -e "/teamspeak/ts3server.ini" ]
                then
                        STOP=$(find /teamspeak/save/logs -type f -name "*1.log" -exec stat -c '%z' {} + | head -n1)
                        if [ -n "$STOP" ]
                        then
                                #Get the creation date of the last log file from the virtual server
                                timestamp_file=$(date -d "$STOP" "+%s")

                                if [ $timestamp_file -gt $current_timestamp ]
                                then
                                        #kill the process
                                        ps -ef | grep "/box86/box86 ./ts3server createinifile=1" | grep -v grep | awk '{print $2}' | xargs kill
                                        sleep 20s
                                        exit
                                fi
                        fi
                fi
                sleep 1s
        done
    fi
fi

#Wait a few seconds
sleep 30s

while :
do
        #Get the seconds to the next sunday
        seconds_next_sunday=$(($(date --date 'next Sunday' +%s) - $(date +%s)))

        #Sleep til sunday
        sleep "$seconds_next_sunday"s

        #Section for the 1 week update checker
        if [ $counter_check_update -gt $interval_check_update ]
        then
                . /teamspeak/sh/check_update.sh
        fi
done
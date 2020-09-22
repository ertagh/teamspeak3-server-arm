#!/bin/sh

#Let the server run until everything necessary has been generated
if [ "$INIFILE" != 0 ]
then
    #No ini file is present
    if ! [ -e "/teamspeak/save/ts3server.ini" ]
    then
        while :
        do
                #ini file has been generated
                if [ -e "/teamspeak/ts3server.ini" ]
                then
                        #kill the process
                        ps -ef | grep "/box86/box86 ./ts3server createinifile=1" | grep -v grep | awk '{print $2}' | xargs kill -SIGTERM
                        exit
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
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
                        #No ini file is present
                        if ! [ -e "/teamspeak/save/ts3server.ini" ]
                        then
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
                                                        echo "Initialization completed!"
                                                        echo "Restart of TeamSpeak 3 Server initiated .."
                                                        #kill the process
                                                        if [ "$SYSTEM_ARCHITECTURE" = "arm" ]
                                                        then
                                                                ps -ef | grep "qemu-i386 -B $QEMU_OFFSET ./ts3server createinifile=1" | grep -v grep | awk '{print $2}' | xargs kill
                                                        else
                                                                ps -ef | grep "./ts3server createinifile=1" | grep -v grep | awk '{print $2}' | xargs kill
                                                        fi
                                                        
                                                        sleep 5s
                                                        exit
                                                fi
                                        fi
                                fi
                                sleep 1s
                        else
                                exit
                        fi
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

        . /teamspeak/sh/check_update.sh
done
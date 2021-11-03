#!/bin/sh
#Check internet connectivity
if !(ping -q -c 1 -W 1 teamspeak.com > /dev/null)
then
    echo "Internet connectivity check failed!"
    return
fi

version=0

#Get current version
if [ -e "/teamspeak/version" ]
then
    version=$(cat /teamspeak/version)
fi

#Getting new information from json file
new_version=$(curl -s "https://teamspeak.com/versions/server.json" | jq -cr '.linux.'"$TS_ARCHITECTURE"'.version')

#Same version -> no update
if [ "$new_version" = "$version" ]
then
    return
fi

#If you entered recovery mode, the 'broken' version got blocked
if [ -e "/teamspeak/blocked" ]
then
    blocked=$(cat /teamspeak/blocked)

    if [ "$new_version" = "$blocked" ]
    then
        return
    fi
fi

echo $(date +%m-%d-%Y)": Update available! $version -> $new_version"
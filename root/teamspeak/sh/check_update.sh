#!/bin/sh
if !(ping -q -c 1 -W 1 teamspeak.com > /dev/null)
then
    echo "Internet connectivity check failed!"
    return
fi

version=0

#Get current installed version
if [ -e "/teamspeak/version" ]
then
    version=$(cat /teamspeak/version)
fi

#Get new version info from json file
new_version=$(curl -s "https://teamspeak.com/versions/server.json" | jq -cr '.linux.x86.version')

if [ "$version" != "$new_verion" ] && [ "$version" != "0" ]
then
    echo $(date +%m-%d-%Y)": Update available! $version -> $new_version"
fi
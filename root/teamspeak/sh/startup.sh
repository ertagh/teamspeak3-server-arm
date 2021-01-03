#!/bin/sh
. /teamspeak/sh/functions.sh

chown_save(){
        chown -R ts:ts /teamspeak
        chown -R ts:ts /teamspeak_cached
        chown -R ts:ts /box86
}

#Add the user and group
if ! id -u ts >/dev/null 2>&1; then
        groupadd -g $GID ts
        useradd -u $UID -g $GID -d /teamspeak ts
fi

#Get current timezone
CURRENT_TIME_ZONE="$(cat /etc/timezone)"

#Update timezone if necessary
if [ $TIME_ZONE != $CURRENT_TIME_ZONE ]
then
    echo "Updating timezone to $TIME_ZONE .."
    ln -fs /usr/share/zoneinfo/$TIME_ZONE /etc/localtime
    dpkg-reconfigure -f noninteractive tzdata
fi

#Only update the system, if wanted
if [ "$DIST_UPDATE" != 0 ]
then
    apt-get update
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
fi

#Check if image contains predownloaded server
if [ -e "/teamspeak/predownloaded" ]
then
        rm -r /teamspeak/predownloaded

        #Complete the installation of the server (similar to last part of "update.sh")
        echo "Finishing the installation of the predownloaded server .."
        clean_cached_folder
        
        create_folders

        ln -s /teamspeak/save/logs /teamspeak/logs
        ln -s /teamspeak/save/files /teamspeak/files

        create_files
        create_links

        create_minimal_runscript
        chown_teamspeak_folder
fi

#Run the updater, if env is set OR file exists OR teamspeak is not installed 
if [ "$TS_UPDATE" != "0" ] || [ -e "/teamspeak/save/update" ] || ! [ -e "/teamspeak/version" ]
then
        if [ -e "/teamspeak/save/update" ]
        then
                rm -r /teamspeak/save/update
        fi

        . /teamspeak/sh/update.sh
fi

#Enter recover mode if file exists
if [ -e "/teamspeak/save/recover" ]
then
        rm -r /teamspeak/save/recover
        . /teamspeak/sh/recovery.sh
fi

#Just for safety, just wait a few seconds
sleep 10s

#Let us chown everything we need..
chown_save

#Debug switch
if [ "$DEBUG" != 0 ]
then
        tail -f /dev/null
fi
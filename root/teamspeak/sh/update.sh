#!/bin/sh
. /teamspeak/sh/functions.sh

echo "-----------------------------------------------------------------------"
echo "TeamSpeak updater:"
echo "-----------------------------------------------------------------------"

#Creates a backup of the teamspeak folder
create_backup(){
    echo "Creating backup!"

    if [ -e "/teamspeak/save/backup/backup.tar.bz2" ]
    then
        rm /teamspeak/save/backup/backup.tar.bz2
    fi

    tar cfj /teamspeak/save/backup/backup.tar.bz2 --exclude-from=/teamspeak/sh/.exclude /teamspeak/* >/dev/null 2>&1
}

#Deletes downloaded TeamSpeak archive
delete_downloaded_ts_file(){
    if ! [ -e "/teamspeak_cached/ts.tar.bz2" ]
    then
        rm -r /teamspeak_cached/ts.tar.bz2
    fi
}

#Creates the version file
create_version_file(){
    echo "$1" > /teamspeak/version
}

#Creates links betwwen save folder and main teamspeak folder
create_links(){
    ln -s /teamspeak/save/ts3server.sqlitedb /teamspeak/ts3server.sqlitedb
    ln -s /teamspeak/save/query_ip_whitelist.txt /teamspeak/query_ip_whitelist.txt
    ln -s /teamspeak/save/query_ip_blacklist.txt /teamspeak/query_ip_blacklist.txt
}

#Creates folders at first run
create_folders(){
    if ! [ -d "/teamspeak/save" ]
    then
        mkdir /teamspeak/save
    fi

    if ! [ -d "/teamspeak/save/files" ]
    then
        mkdir /teamspeak/save/files
    fi

    if ! [ -d "/teamspeak/save/logs" ]
    then
        mkdir /teamspeak/save/logs
    fi

    if ! [ -d "/teamspeak/save/backup" ]
    then
        mkdir /teamspeak/save/backup
    fi
}

#Creates files at first run
create_files(){
    if ! [ -e "/teamspeak/save/query_ip_whitelist.txt" ]
    then
        touch /teamspeak/save/query_ip_whitelist.txt
    fi

    if ! [ -e "/teamspeak/save/query_ip_blacklist.txt" ]
    then
        touch /teamspeak/save/query_ip_blacklist.txt
    fi

    if ! [ -e "/teamspeak/save/ts3server.sqlitedb" ]
    then
        touch /teamspeak/save/ts3server.sqlitedb
    fi
}

#Check internet connectivity
if !(ping -q -c 1 -W 1 google.com > /dev/null)
then
    echo "Internet connectivity check failed! No update was done."
    return
fi

version=0

#Get current version
if [ -e "/teamspeak/version" ]
then
    version=$(cat /teamspeak/version)
fi

#Getting new information from json file
new_version=$(curl -s "https://teamspeak.com/versions/server.json" | jq -cr '.linux.x86.version')
new_checksum=$(curl -s "https://teamspeak.com/versions/server.json" | jq -cr '.linux.x86.checksum')
new_link=$(curl -s "https://teamspeak.com/versions/server.json" | jq -cr '.linux.x86.mirrors."teamspeak.com"')


if [ "$new_version" = "$version" ]
then
    echo "Current version ($version) is up to date!"
    return
fi

#If you entered recovery mode, the 'broken' version got blocked
if [ -e "/teamspeak/blocked" ]
then
    blocked=$(cat /teamspeak/blocked)

    if [ "$new_version" = "$blocked" ]
    then
        echo "There is a newer version available, but it's blocked!"
        return
    fi
fi

echo "Update available! $version -> $new_version"

echo "Downloading new version: $new_version"
clean_cached_folder
#Download new version an generate checksum
wget -O /teamspeak_cached/ts.tar.bz2 "$new_link" > /dev/null 2>&1
checksum_calculated=$(shasum -a256 /teamspeak_cached/ts.tar.bz2 | awk '{print $1}')

if [ -z "$new_checksum" ]
then
    echo "Couldn't get new checksum!"
    delete_downloaded_ts_file
    return
fi

if [ -z "$checksum_calculated" ]
then
    echo "Couldn't generate checksum!"
    delete_downloaded_ts_file
    return
fi

if [ "$checksum_calculated" != "$new_checksum" ]
then
    echo "Checksum check failed! No update was done."
    delete_downloaded_ts_file
    return
fi

echo "Checksum check succesful!"

if [ "$version" != "0" ] && [ "$TS_UPDATE_BACKUP" != 0 ]
then
    create_backup
fi

echo "Installing new version $new_version!"

#Untar new version
tar xf /teamspeak_cached/ts.tar.bz2 --strip-components=1 -C /teamspeak_cached
rm /teamspeak_cached/ts.tar.bz2 /teamspeak_cached/ts3server_minimal_runscript.sh /teamspeak_cached/LICENSE /teamspeak_cached/CHANGELOG /teamspeak_cached/libts3db_mariadb.so
rm -r /teamspeak_cached/doc /teamspeak_cached/redist /teamspeak_cached/serverquerydocs

clean_teamspeak_folder

#If blocked file exists, delete it
if [ -e /teamspeak/blocked ]
then
    rm -r /teamspeak/blocked
fi

mv /teamspeak_cached/* /teamspeak/

clean_cached_folder

# If version = 0, there is no TS server installed
if [ "$version" = "0" ]
then
    create_folders

    if [ "$ONLY_LOG_FILES" = 1 ]
    then
        ln -s /teamspeak/save/logs /teamspeak/logs
    else
        mkdir /teamspeak/logs
    fi

    ln -s /teamspeak/save/files /teamspeak/files

    create_files
    create_links
fi

create_minimal_runscript
create_version_file $new_version
chown_teamspeak_folder

echo "Version $new_version installed succesfully!"
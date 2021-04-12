#!/bin/sh
. /teamspeak/sh/functions.sh

clean_teamspeak_folder_recovery(){
    if [ -e "/teamspeak/save/query_ip_blacklist.txt" ]
    then
        rm -r /teamspeak/save/query_ip_blacklist.txt
    fi

    if [ -e "/teamspeak/save/query_ip_whitelist.txt" ]
    then
        rm -r /teamspeak/save/query_ip_whitelist.txt
    fi

    if [ -e "/teamspeak/save/ts3server.sqlitedb" ]
    then
        rm -r /teamspeak/save/ts3server.sqlitedb
    fi

    if [ -e "/teamspeak/save/ts3server.sqlitedb-shm" ]
    then
        rm -r /teamspeak/save/ts3server.sqlitedb-shm
    fi

    if [ -e "/teamspeak/save/ts3server.sqlitedb-wal" ]
    then
        rm -r /teamspeak/save/ts3server.sqlitedb-wal
    fi

    if [ -e "/teamspeak/save/ts3server.ini" ]
    then
        rm -r /teamspeak/save/ts3server.ini
    fi

    if [ -e "/teamspeak/save/logs" ]
    then
        rm -r /teamspeak/save/logs
    fi
}

#Checking for backups
if ! [ -e "/teamspeak/save/backup/backup.tar.bz2" ]
then
    echo "There is no backup available!"
    return
fi

echo "Entering recovery mode .."

#Cleaning chache folder
clean_cached_folder

echo "Uncompressing backup file .."
tar xf /teamspeak/save/backup/backup.tar.bz2 --strip-components=1 -C /teamspeak_cached

#Renames the current version into blocked -> update to this version is blocked after this
if [ -e "/teamspeak/version" ]
then
    mv /teamspeak/version /teamspeak/blocked
fi

#Cleaning before recovery
clean_teamspeak_folder
clean_teamspeak_folder_recovery

echo "Rollback to old version .."
#Recovering the old version
mv /teamspeak_cached/save/* /teamspeak/save/
rm -r /teamspeak_cached/save
mv /teamspeak_cached/* /teamspeak/

#Cleaning and chowning the files again
clean_cached_folder
create_folders
create_links
create_links
chown_teamspeak_folder
echo "Recovery was successful!"
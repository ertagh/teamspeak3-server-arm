#!/bin/sh
#Cleans the entire teamspeak folder
clean_teamspeak_folder(){
    if [ -d "/teamspeak/sql" ]
    then
        rm -r /teamspeak/sql
    fi

    if [ -d "/teamspeak/tsdns" ]
    then
        rm -r /teamspeak/tsdns
    fi

    if [ -e "/teamspeak/libts3db_sqlite3.so" ]
    then
        rm -r /teamspeak/libts3db_sqlite3.so
    fi

    if [ -e "/teamspeak/libts3_ssh.so" ]
    then
        rm -r /teamspeak/libts3_ssh.so
    fi

    if [ -e "/teamspeak/ts3server" ]
    then
        rm -r /teamspeak/ts3server
    fi

    if [ -e "/teamspeak/ts3server_minimal_runscript.sh" ]
    then
        rm -r /teamspeak/ts3server_minimal_runscript.sh
    fi

    if [ -e "/teamspeak/ts3server_startscript.sh" ]
    then
        rm -r /teamspeak/ts3server_startscript.sh
    fi

    if [ -e "/teamspeak/version" ]
    then
        rm -r /teamspeak/version
    fi

    if [ -e "/teamspeak/save/update" ]
    then
        rm -r /teamspeak/save/update
    fi
}

#Cleans the folder for cache
clean_cached_folder(){
    if [ "$(ls -A /teamspeak_cached)" ]
    then
        rm -r /teamspeak_cached/*
    fi
}

#Creates the minimal runscript
create_minimal_runscript(){
    echo '#!/bin/sh

cd $(dirname $([ -x "$(command -v realpath)" ] && realpath "$0" || readlink -f "$0"))
if [ -e "/teamspeak/init" ]
then
    exec qemu-i386 ./ts3server
fi
exec qemu-i386 ./ts3server > /dev/null 2>&1' > /teamspeak/ts3server_minimal_runscript.sh


    chmod +x /teamspeak/ts3server_minimal_runscript.sh
}

#chown everything for ts user and group
chown_teamspeak_folder(){
    chown ts:ts -R /teamspeak
}
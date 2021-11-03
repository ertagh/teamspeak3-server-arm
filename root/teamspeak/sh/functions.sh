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

    if [ "$SYSTEM_ARCHITECTURE" = "x86" ] || [ "$SYSTEM_ARCHITECTURE" = "x86_64" ]
    then
        echo '#!/bin/sh

cd $(dirname $([ -x "$(command -v realpath)" ] && realpath "$0" || readlink -f "$0"))

if [ "$INIFILE" != 0 ]
then
    if ! [ -e "/teamspeak/save/ts3server.ini" ]
    then
        echo "Initializing TeamSpeak 3 Server with ini-file .."
        ./ts3server createinifile=1
    fi
fi

if [ "$INIFILE" != 0 ]
then
    echo "Starting TeamSpeak 3 Server with ini-file .."
    ./ts3server inifile=save/ts3server.ini
else
    echo "Starting TeamSpeak 3 Server .."
    ./ts3server
fi' > /teamspeak/ts3server_minimal_runscript.sh
    else
        echo '#!/bin/sh

cd $(dirname $([ -x "$(command -v realpath)" ] && realpath "$0" || readlink -f "$0"))

if [ "$INIFILE" != 0 ]
then
    if ! [ -e "/teamspeak/save/ts3server.ini" ]
    then
        echo "Initializing TeamSpeak 3 Server with ini-file .."
        exec qemu-i386 -B "$QEMU_OFFSET" ./ts3server createinifile=1
    fi
fi

if [ "$INIFILE" != 0 ]
then
    echo "Starting TeamSpeak 3 Server with ini-file .."
    exec qemu-i386 -B "$QEMU_OFFSET" ./ts3server inifile=save/ts3server.ini
else
    echo "Starting TeamSpeak 3 Server .."
    exec qemu-i386 -B "$QEMU_OFFSET" ./ts3server
fi' > /teamspeak/ts3server_minimal_runscript.sh
    fi

    chmod +x /teamspeak/ts3server_minimal_runscript.sh
}

#chown everything for ts user and group
chown_teamspeak_folder(){
    chown ts:ts -R /teamspeak
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

#Creates links betwwen save folder and main teamspeak folder
create_links(){
    ln -s /teamspeak/save/ts3server.sqlitedb /teamspeak/ts3server.sqlitedb > /dev/null 2>&1
    ln -s /teamspeak/save/query_ip_whitelist.txt /teamspeak/query_ip_whitelist.txt > /dev/null 2>&1
    ln -s /teamspeak/save/query_ip_blacklist.txt /teamspeak/query_ip_blacklist.txt > /dev/null 2>&1

    if ! [ -e "/teamspeak/logs" ]
    then
        ln -s /teamspeak/save/logs /teamspeak/logs > /dev/null 2>&1
    fi

    if ! [ -e "/teamspeak/files" ]
    then
        ln -s /teamspeak/save/files /teamspeak/files > /dev/null 2>&1
    fi

    if [ -e "/teamspeak/licensekey.dat" ]
    then
        rm -r /teamspeak/licensekey.dat
    fi

    if [ -e "/teamspeak/save/licensekey.dat" ]
    then
        ln -s /teamspeak/save/licensekey.dat /teamspeak/licensekey.dat > /dev/null 2>&1
    fi
}

#Checks if every package is installed
check_installed_packages(){
    echo "Checking if every package is installed .."

    if [ -z "$(dpkg -l | grep qemu)" ] && [ "$SYSTEM_ARCHITECTURE" = "arm" ]
    then
        echo "Qemu missing! Reinstalling .."
        DEBIAN_FRONTEND=noninteractive apt-get install -t buster-backports -y qemu
    fi

    if [ -z "$(dpkg -l | grep qemu-user)" ] && [ "$SYSTEM_ARCHITECTURE" = "arm" ]
    then
        echo "Qemu-user missing! Reinstalling .."
        DEBIAN_FRONTEND=noninteractive apt-get install -t buster-backports -y qemu-user
    fi

    if [ -z "$(dpkg -l | grep wget)" ]
    then
        echo "Wget missing! Reinstalling .."
        DEBIAN_FRONTEND=noninteractive apt-get install -t buster-backports -y wget
    fi

    if [ -z "$(dpkg -l | grep bzip2)" ]
    then
        echo "Bzip2 missing! Reinstalling .."
        DEBIAN_FRONTEND=noninteractive apt-get install -t buster-backports -y bzip2
    fi

    if [ -z "$(dpkg -l | grep procps)" ]
    then
        echo "Procps missing! Reinstalling .."
        DEBIAN_FRONTEND=noninteractive apt-get install -t buster-backports -y procps
    fi

    if [ -z "$(dpkg -l | grep jq)" ]
    then
        echo "Jq missing! Reinstalling .."
        DEBIAN_FRONTEND=noninteractive apt-get install -t buster-backports -y jq
    fi

    if [ -z "$(dpkg -l | grep iputils-ping)" ]
    then
        echo "Iputils-ping missing! Reinstalling .."
        DEBIAN_FRONTEND=noninteractive apt-get install -t buster-backports -y iputils-ping
    fi

    if [ -z "$(dpkg -l | grep libdigest-sha-perl)" ]
    then
        echo "Libdigest-sha-perl missing! Reinstalling .."
        DEBIAN_FRONTEND=noninteractive apt-get install -t buster-backports -y libdigest-sha-perl
    fi

    if [ -z "$(dpkg -l | grep ca-certificates)" ]
    then
        echo "Ca-certificates missing! Reinstalling .."
        DEBIAN_FRONTEND=noninteractive apt-get install -t buster-backports -y ca-certificates
    fi

    if [ -z "$(dpkg -l | grep locales)" ]
    then
        echo "Locales missing! Reinstalling .."
        DEBIAN_FRONTEND=noninteractive apt-get install -t buster-backports -y locales
    fi
}
# TeamSpeak for arm (using qemu)

Based on arm32v7/debian:stable-slim<br/>
Or arm64v8/debian:stable-slim

Tested on an RPi3b+ running Raspbian<br/>
And RPi3b+ running Ubuntu 20.04 (aarch64)



## Run example:

Use something like this and replace {path} and timezone to your liking:

```shell
docker run -d --name TeamSpeak3_Server -e TIME_ZONE=Europe/Berlin -p 9987:9987/udp -p 10011:10011/tcp -p 30033:30033/tcp -v {path}/:/teamspeak/save/ ertagh/teamspeak3-server:latest
```

#### Have patience after you started the container. It will take some time and your CPU load will be pretty high during initialization. 

## Additional information:

| ENV              | default | available |                                                                                                                                                                                               |
|------------------|---------|-----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| DIST_UPDATE      | 0       | 0,1       | If set to 1, the system will apt update and upgrade on every restart                                                                                                                          |
| ONLY_LOG_FILES   | 0       | 0,1       | If set to 1, everything TeamSpeak related is only shown in the log files                                                                                                                      |
| INTERVAL         | 600     | Int       | Interval in seconds to check, if ONLY_LOG_FILES is set to 0, if there are new log entries. WARNING: low values will increase CPU load! |
| TS_UPDATE        | 0       | 0,1       | If set to 1, an updater, which runs on every start of the container, checks & updates the server to the newest version if necessary.                                                          |
| TS_UPDATE_BACKUP | 1       | 0,1       | If set to 1, the updater will make an backup of the current server before updating to a newer version.                                                                                        |
| UID              | 1000    |           | Set a custom UID (user)                                                                                                                                                                       |
| GID              | 1000    |           | Set a custom GID (group)                                                                                                                                                                      |

### TS_UPDATE
If you set the updater to 0, but you still want to update to a newer version, just put a empty file called "update" inside the "save"-folder and restart the container.

### TS_UPDATE_BACKUP
The backup is located in the "backup"-folder within the "save"-folder.
There will be no versioning inside the backup-script. If you want to keep more than just your previous version, you have to do this by yourself.

### Update check
Once every week the container will check if the installed version is still the newest one. If not, there will be a message inside the log.

### Recovery
If you made an update, but the new version doesn't work or you just want to go back to the old one, just put an empty file called "recover" inside the "save"-folder and restart the container.</br>
You can run the "recover.sh" inside the container as well, it'll do the same.

### Update from older container:

With the new version, many has changed within the container.
So, if you are using an older version of this container, you may want to check the following points:
- logs folder is now within the saved folder: you don't need the seperate folder for the logs outside of the saved folder
- additional environment variables: check the table above
- entrypoint.sh has been heavily revised

</br>
</br>
</br>

#### You found a bug within the scripts?</br>
#### You've got a problem with the container?</br>
#### You are missing a feature?
### Contact me!

</br>
</br>

#### Changelog
[2020-06-02]:
- Reworked the bug fix from 2020-05-09 for a more permanent solution
- Connectivity check now pings teamspeak.com instead of google.com

[2020-05-09]: 
- Bug fixed: Server didn't show Server Query login credentials -> Server now enters new initialization process if there is no database available
- Switched over to S6 (INTERVAL no longer needs to check if the server is running)
- Images were renameded

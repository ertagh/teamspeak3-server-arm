[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/L3L35Z0BP)
# TeamSpeak for everything
### Formerly known as TeamSpeak for arm (using QEMU or Box86)

Based on debian:buster-slim<br/>

Tested on an RPi3b+ running Raspbian<br/>
And RPi3b+ running Ubuntu 20.04 (aarch64)


## Which tag should I use?

If you have a fast connection to "teamspeak.com" -> Use :latest-box <br/>
Otherwise -> Use :latest-box-predownloaded

If you want to use QEMU instead of Box86/Box64 -> Use :latest / :latest-predownloaded

The only difference between images with and without predownloaded tag is that the images with predownloaded tag already have a predownloaded TeamSpeak 3 Server built in, while the other will download one during setup.

#### Overview:<br/>
:latest -> QEMU (arm32v5, arm32v7 and arm64v8 available), x86, x64<br/>
:latest-predownloaded -> QEMU (arm32v5, arm32v7 and arm64v8 available), x86, x64<br/>
:latest-box -> Box86/Box64 (arm32v7 and arm64v8)<br/>
:latest-box-predownloaded -> Box86/Box64 (arm32v7 and arm64v8)
<br/>
<br/>

## :latest-box
### Run example:
Use something like this and replace {path} and timezone to your liking:

```shell
docker run -d --name TeamSpeak3_Server -e TS_UPDATE=1 -e TIME_ZONE=Europe/Berlin -p 9987:9987/udp -p 10011:10011/tcp -p 30033:30033/tcp -v {path}/:/teamspeak/save/ ertagh/teamspeak3-server:latest-box
```
#### Have patience after you started the container.

## :latest-box-predownloaded
### Run example:
Use something like this and replace {path} and timezone to your liking:

```shell
docker run -d --name TeamSpeak3_Server -e TIME_ZONE=Europe/Berlin -p 9987:9987/udp -p 10011:10011/tcp -p 30033:30033/tcp -v {path}/:/teamspeak/save/ ertagh/teamspeak3-server:latest-box-predownloaded
```
#### Have patience after you started the container.
<br/>
<br/>

## Server Admin Privilege Key
You can find the key in 3 different ways:
- You can use the docker logs command and may be able to catch the key that way (Way easier if you're using e.g. Portainer)
- Inside {path} is a 'logs' directory. Use for example 'cat' to show the content of the !first! log that ends with '_1.log'
- As an alternative to the second way you can connect to the container directly: 'docker exec -it {NameOfContainer} /bin/bash'. Next go to the 'logs' directory and 'cat' the content of the first log that ends with '_1.log'

<br/>
<br/>

## Notes:</br>
- With predownloaded tags you can update the server either by using the integrated updater OR you can pull the latest predownloaded image and redeploy your container.
- QEMU will take some time to startup. During that time your CPU load will be pretty high.
<br/>
<br/>

## Additional information:

| ENV              | default | available |                                                                                                                                                                                               |
|------------------|---------|-----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| INIFILE          | 0       | 0,1       | If set to 1, the system will generate an ini-file inside the "save"-folder and will use this file at startup                                                                                  |
| DIST_UPDATE      | 0       | 0,1       | If set to 1, the system will apt update and upgrade on every restart                                                                                                                          |
| TS_UPDATE        | 0       | 0,1       | If set to 1, an updater, which runs on every start of the container, checks & updates the server to the newest version if necessary.                                                          |
| TS_UPDATE_BACKUP | 1       | 0,1       | If set to 1, the updater will make an backup of the current server before updating to a newer version.                                                                                        |
| UID              | 1000    |           | Set a custom UID (user)                                                                                                                                                                       |
| GID              | 1000    |           | Set a custom GID (group)                                                                                                                                                                      |
| DEBUG            | 0       | 0,1       | Container will enter debug mode ( -> no server will start, only the helper)                                                                                                                   |
| QEMU_OFFSET      | 0x8000  | hex,int   | Specify the offset of qemu (Only use if you're facing an error with the default value. Most likely try 0x10000 instead) Not needed for Box86                                                  |


### TS_UPDATE
If you set the updater to 0, but you still want to update to a newer version, just put a empty file called "update" inside the "save"-folder and restart the container.

### TS_UPDATE_BACKUP
The backup is located in the "backup"-folder within the "save"-folder.
There will be no versioning inside the backup-script. If you want to keep more than just your previous version, you have to do this by yourself.

### Update check
Every sunday the container will check if the installed version is still up-to-date. If not, there will be a message inside the log.

### Recovery
If you made an update, but the new version doesn't work or you just want to go back to the old one, just put an empty file called "recover" inside the "save"-folder and restart the container.<br/>
You can run the "recover.sh" inside the container as well, it'll do the same.

### Debug
If you want to enter debug mode you can either set the env for a permanent debug mode, or just create a empty file called "debug" inside the "save"-folder and restart the container.


<br/>
<br/>
<br/>

#### You found a bug within the scripts?<br/>
#### You've got a problem with the container?<br/>
#### You are missing a feature?
### Contact me!

<br/>
<br/>

#### Changelog
[2022-01-08]:
- Added Box64 image
- Added Tags :box-latest and :box-latest-predownloaded
- Switch to Debian Bullseye for Box86/Box64 images

[2021-11-04]:
- Updated the containers
- Added arm32v5 image
- Added x86 and x64 images

[2021-08-27]:
- Updated the containers
- Updated predownloaded images to TeamSpeak 3.13.6

[2021-04-06]:
- Box86 now fully works
- Added all features from QEMU to Box86
- Reworked Box86 image

[2021-03-24]:
- Added feature to use 'licensekey.dat'

[2021-03-20]:
- Added check if all necessary packages are installed

[2021-03-15]:
- Switched back to Debian Buster, due to errors
- Added buster-backports repository

[2021-01-03]:
- Updated from Debian Buster to Bullseye
- Therefore updated qemu version
- Removed ONLY_LOG_FILES & INTERVAL Envs
- Reworked the whole scripts due to the updates
- Added QEMU_OFFSET Env

[2021-01-02]:
- Added debug env
- Optimized Re-init phase
- Optimized the helper

[2021-01-01]:
- Updated S6 to 2.1.0.2
- Updated predownload images to TeamSpeak 3.13.3
- Fixed "ONLY_LOG_FILES=0" bug inside helper.sh

[2020-10-13]:
- Updated the weekly version check

[2020-09-22]:
- Added arm32v7-image based on Box86
- Updated S6 to a newer version
- Added ini-file support

[2020-06-14]:
- Reworked the run script. Now you should see the actual cause why your container didn't start more easily.
- Added :latest-predownload tag

[2020-06-02]:
- Reworked the bug fix from 2020-05-09 for a more permanent solution
- Connectivity check now pings teamspeak.com instead of google.com

[2020-05-09]: 
- Bug fixed: Server didn't show Server Query login credentials -> Server now enters new initialization process if there is no database available
- Switched over to S6 (INTERVAL no longer needs to check if the server is running)
- Images were renameded
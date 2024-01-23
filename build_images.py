import os
import subprocess

# Short and simple script that helps building an pushing the images
build_pre_downloaded_input = input('Build pre-downloaded images? [Y/n] ').lower()
build_pre_downloaded = True if build_pre_downloaded_input == 'y' else False

tag_name = input('Enter tag name: ')

# Set current workdir
os.chdir(os.path.dirname(os.path.abspath(__file__)))

# Build images
subprocess.run(['docker', 'build', '--no-cache', '-t', f'ertagh/teamspeak3-server:arm32v7-box-{tag_name}', '-f', 'Dockerfile.arm32v7', '.'])
subprocess.run(['docker', 'build', '--no-cache', '-t', f'ertagh/teamspeak3-server:arm64v8-box-{tag_name}', '-f', 'Dockerfile.arm64v8', '.'])

if build_pre_downloaded:
    subprocess.run(['docker', 'build', '--no-cache', '-t', f'ertagh/teamspeak3-server:arm32v7-box-predownloaded-{tag_name}', '-f', 'Dockerfile.arm32v7-predownloaded', '.'])
    subprocess.run(['docker', 'build', '--no-cache', '-t', f'ertagh/teamspeak3-server:arm64v8-box-predownloaded-{tag_name}', '-f', 'Dockerfile.arm64v8-predownloaded', '.'])
    
# Push the new images
subprocess.run(['docker', 'push', f'ertagh/teamspeak3-server:arm32v7-box-{tag_name}'])
subprocess.run(['docker', 'push', f'ertagh/teamspeak3-server:arm64v8-box-{tag_name}'])

if build_pre_downloaded:
    subprocess.run(['docker', 'push', f'ertagh/teamspeak3-server:arm32v7-box-predownloaded-{tag_name}'])
    subprocess.run(['docker', 'push', f'ertagh/teamspeak3-server:arm64v8-box-predownloaded-{tag_name}'])

# Create new manifests
subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:latest-box', f'ertagh/teamspeak3-server:arm32v7-box-{tag_name}', f'ertagh/teamspeak3-server:arm64v8-latest-box-{tag_name}'])
subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:latest-box'])

if build_pre_downloaded:
    subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:latest-box-predownloaded', f'ertagh/teamspeak3-server:arm32v7-box-predownloaded-{tag_name}', f'ertagh/teamspeak3-server:arm64v8-box-predownloaded-{tag_name}'])
    subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:latest-box-predownloaded'])

# Manifests for compability reasons
subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:arm32v7-latest-box', f'ertagh/teamspeak3-server:arm32v7-box-{tag_name}' ])
subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:arm32v7-latest-box'])

subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:arm64v8-latest-box', f'ertagh/teamspeak3-server:arm64v8-box-{tag_name}' ])
subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:arm64v8-latest-box'])

if build_pre_downloaded:
    subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:arm32v7-latest-box-predownloaded', f'ertagh/teamspeak3-server:arm32v7-box-predownloaded-{tag_name}' ])
    subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:arm32v7-latest-box-predownloaded'])

    subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:arm64v8-latest-box-predownloaded', f'ertagh/teamspeak3-server:arm64v8-box-predownloaded-{tag_name}' ])
    subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:arm64v8-latest-box-predownloaded'])


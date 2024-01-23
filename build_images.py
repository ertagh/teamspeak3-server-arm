import os
import subprocess

# Short and simple script that helps building an pushing the images
build_pre_downloaded_input = input('Build pre-downloaded images? [Y/n] ').lower()
build_pre_downloaded = True if build_pre_downloaded_input == 'y' else False

tag_name = input('Enter tag name: ')

latest_tag_qemu = input('Enter latest tag of qemu images: ')
latest_tag_qemu_predownloaded = input('Enter latest tag of qemu pre-downloaded iamges: ')

# Set current workdir
os.chdir(os.path.dirname(os.path.abspath(__file__)))

# Build images
subprocess.run(['docker', 'build', '--no-cache', '-t', f'ertagh/teamspeak3-server:x86-{tag_name}', '-f', 'Dockerfile.x86', '.'])
subprocess.run(['docker', 'build', '--no-cache', '-t', f'ertagh/teamspeak3-server:x64-{tag_name}', '-f', 'Dockerfile.x64', '.'])

if build_pre_downloaded:
    subprocess.run(['docker', 'build', '--no-cache', '-t', f'ertagh/teamspeak3-server:x86-predownloaded-{tag_name}', '-f', 'Dockerfile.x86-predownloaded', '.'])
    subprocess.run(['docker', 'build', '--no-cache', '-t', f'ertagh/teamspeak3-server:x64-predownloaded-{tag_name}', '-f', 'Dockerfile.x64-predownloaded', '.'])
    
# Push the new images
subprocess.run(['docker', 'push', f'ertagh/teamspeak3-server:x86-{tag_name}'])
subprocess.run(['docker', 'push', f'ertagh/teamspeak3-server:x64-{tag_name}'])

if build_pre_downloaded:
    subprocess.run(['docker', 'push', f'ertagh/teamspeak3-server:x86-predownloaded-{tag_name}'])
    subprocess.run(['docker', 'push', f'ertagh/teamspeak3-server:x64-predownloaded-{tag_name}'])

# Create new manifests
subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:latest', f'ertagh/teamspeak3-server:x86-{tag_name}', f'ertagh/teamspeak3-server:x64-{tag_name}', f'ertagh/teamspeak3-server:arm64v8-qemu-{latest_tag_qemu}', f'ertagh/teamspeak3-server:arm32v7-qemu-{latest_tag_qemu}', f'ertagh/teamspeak3-server:arm32v5-qemu-{latest_tag_qemu}' ])
subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:latest'])

if build_pre_downloaded:
    subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:latest-predownloaded', f'ertagh/teamspeak3-server:x86-predownloaded-{tag_name}', f'ertagh/teamspeak3-server:x64-predownloaded-{tag_name}', f'ertagh/teamspeak3-server:arm64v8-qemu-predownloaded-{latest_tag_qemu_predownloaded}', f'ertagh/teamspeak3-server:arm32v7-qemu-predownloaded-{latest_tag_qemu_predownloaded}', f'ertagh/teamspeak3-server:arm32v5-qemu-predownloaded-{latest_tag_qemu_predownloaded}' ])
    subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:latest-predownloaded'])

# Manifests for compability reasons
subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:x86-latest', f'ertagh/teamspeak3-server:x86-{tag_name}' ])
subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:x86-latest'])

subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:x64-latest', f'ertagh/teamspeak3-server:x64-{tag_name}' ])
subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:x64-latest'])

if build_pre_downloaded:
    subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:x86-latest-predownloaded', f'ertagh/teamspeak3-server:x86-predownloaded-{tag_name}' ])
    subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:x86-latest-predownloaded'])

    subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:x64-latest-predownloaded', f'ertagh/teamspeak3-server:x64-predownloaded-{tag_name}' ])
    subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:x64-latest-predownloaded'])


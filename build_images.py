import os
import subprocess

# Short and simple script that helps building an pushing the images
build_pre_downloaded_input = input('Build pre-downloaded images? [Y/n] ').lower()
build_pre_downloaded = True if build_pre_downloaded_input == 'y' else False

tag_name = input('Enter tag name: ')

latest_tag_x86 = input('Enter latest tag of x86 images: ')
latest_tag_x86_predownloaded = input('Enter latest tag of x86 pre-downloaded iamges: ')

# Set current workdir
os.chdir(os.path.dirname(os.path.abspath(__file__)))

# Build images
subprocess.run(['docker', 'build', '--no-cache', '-t', f'ertagh/teamspeak3-server:arm32v5-qemu-{tag_name}', '-f', 'Dockerfile.arm32v5', '.'])
subprocess.run(['docker', 'build', '--no-cache', '-t', f'ertagh/teamspeak3-server:arm32v7-qemu-{tag_name}', '-f', 'Dockerfile.arm32v7', '.'])
subprocess.run(['docker', 'build', '--no-cache', '-t', f'ertagh/teamspeak3-server:arm64v8-qemu-{tag_name}', '-f', 'Dockerfile.arm64v8', '.'])

if build_pre_downloaded:
    subprocess.run(['docker', 'build', '--no-cache', '-t', f'ertagh/teamspeak3-server:arm32v5-qemu-predownloaded-{tag_name}', '-f', 'Dockerfile.arm32v5-predownloaded', '.'])
    subprocess.run(['docker', 'build', '--no-cache', '-t', f'ertagh/teamspeak3-server:arm32v7-qemu-predownloaded-{tag_name}', '-f', 'Dockerfile.arm32v7-predownloaded', '.'])
    subprocess.run(['docker', 'build', '--no-cache', '-t', f'ertagh/teamspeak3-server:arm64v8-qemu-predownloaded-{tag_name}', '-f', 'Dockerfile.arm64v8-predownloaded', '.'])
    
# Push the new images
subprocess.run(['docker', 'push', f'ertagh/teamspeak3-server:arm32v5-qemu-{tag_name}'])
subprocess.run(['docker', 'push', f'ertagh/teamspeak3-server:arm32v7-qemu-{tag_name}'])
subprocess.run(['docker', 'push', f'ertagh/teamspeak3-server:arm64v8-qemu-{tag_name}'])

if build_pre_downloaded:
    subprocess.run(['docker', 'push', f'ertagh/teamspeak3-server:arm32v5-qemu-predownloaded-{tag_name}'])
    subprocess.run(['docker', 'push', f'ertagh/teamspeak3-server:arm32v7-qemu-predownloaded-{tag_name}'])
    subprocess.run(['docker', 'push', f'ertagh/teamspeak3-server:arm64v8-qemu-predownloaded-{tag_name}'])

# Create new manifests
subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:latest', f'ertagh/teamspeak3-server:x86-{latest_tag_x86}', f'ertagh/teamspeak3-server:x64-{latest_tag_x86}', f'ertagh/teamspeak3-server:arm64v8-qemu-{tag_name}', f'ertagh/teamspeak3-server:arm32v7-qemu-{tag_name}', f'ertagh/teamspeak3-server:arm32v5-qemu-{tag_name}' ])
subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:latest'])

if build_pre_downloaded:
    subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:latest-predownloaded', f'ertagh/teamspeak3-server:x86-predownloaded-{latest_tag_x86_predownloaded}', f'ertagh/teamspeak3-server:x64-predownloaded-{latest_tag_x86_predownloaded}', f'ertagh/teamspeak3-server:arm64v8-qemu-predownloaded-{tag_name}', f'ertagh/teamspeak3-server:arm32v7-qemu-predownloaded-{tag_name}', f'ertagh/teamspeak3-server:arm32v5-qemu-predownloaded-{tag_name}' ])
    subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:latest-predownloaded'])

# Manifests for compability reasons
subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:arm32v5-latest-qemu', f'ertagh/teamspeak3-server:arm32v5-qemu-{tag_name}' ])
subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:arm32v5-latest-qemu'])

subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:arm32v7-latest-qemu', f'ertagh/teamspeak3-server:arm32v7-qemu-{tag_name}' ])
subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:arm32v7-latest-qemu'])

subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:arm64v8-latest-qemu', f'ertagh/teamspeak3-server:arm64v8-qemu-{tag_name}' ])
subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:arm64v8-latest-qemu'])

if build_pre_downloaded:
    subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:arm32v5-latest-qemu-predownloaded', f'ertagh/teamspeak3-server:arm32v5-qemu-predownloaded-{tag_name}' ])
    subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:arm32v5-latest-qemu-predownloaded'])

    subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:arm32v7-latest-qemu-predownloaded', f'ertagh/teamspeak3-server:arm32v7-qemu-predownloaded-{tag_name}' ])
    subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:arm32v7-latest-qemu-predownloaded'])

    subprocess.run(['docker', 'manifest', 'create', 'ertagh/teamspeak3-server:arm64v8-latest-qemu-predownloaded', f'ertagh/teamspeak3-server:arm64v8-qemu-predownloaded-{tag_name}' ])
    subprocess.run(['docker', 'manifest', 'push', '--purge', 'ertagh/teamspeak3-server:arm64v8-latest-qemu-predownloaded'])


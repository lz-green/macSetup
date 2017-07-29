#!/bin/bash

# Colours
BOLD='\033[1m'
RED='\033[91m'
GREEN='\033[92m'
YELLOW='\033[93m'
BLUE='\033[94m'
ENDC='\033[0m'

# Display a pretty header
echo
echo -e "${BOLD}Mac Setup using Ansible${ENDC}"
echo

# Prompt the user for their sudo password
sudo -v

# Enable passwordless sudo for the macbuild run
sudo sed -i -e "s/^%admin.*/%admin  ALL=(ALL) NOPASSWD: ALL/" /etc/sudoers

# Install Homebrew
if ! which brew > /dev/null 2>&1
then
    echo -e "${BLUE}Installing Homebrew ...${ENDC}"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
else
  echo -e "${BLUE}Homebrew already installed ... skipping!${ENDC}"
fi

# Install Python
if ! brew list python3 > /dev/null 2>&1
then
    echo -e "${BLUE}Installing Python 3 ...${ENDC}"
    brew install python3
else
  echo -e "${BLUE}Python 3 already installed ... skipping!${ENDC}"
fi

# Install Ansible (using pip is the officially supported way)
#if ! pip3 show ansible > /dev/null 2>&1
#then
#    echo -e "${BLUE}Installing Ansible${ENDC}"
    # TODO: switch back to pip when Ansible 2.2.1.0 is released
    # pip3 install ansible
#    pip3 install git+git://github.com/ansible/ansible.git@stable-2.2
#fi

# Install Ansible 
if ! command -v ansible >/dev/null; then
  echo -e "${BLUE}Installing Ansible ...${ENDC}"
  brew install ansible 
else
  echo -e "${BLUE}Ansible already installed ... skipping!${ENDC}"
fi

# Clone the repository to your local drive.
if [ -d "~/macSetup" ]; then
  echo -e "${BLUE}A copy of the Github repository is already present. Removing ...${ENDC}"
  rm -rf ~/macSetup/
fi
echo -e "${BLUE}Cloning macSetup repository ...${ENDC}"
cd
git clone https://github.com/bhdicaire/macSetup.git 
cd ~/macSetup


# Setup the source of music production software from the backup drive attached
if [ -d "/Volumes/RestoreMac" ]
then
  export MACSETUP_BASEDIR='/Volumes/RestoreMac'
fi

if [ ! -z "$MACSETUP_BASEDIR" ]
then
  echo -e "${GREEN}Restoring sensitive information using this volume: ${MACSETUP_BASEDIR}${ENDC}"
else
  echo -e "${RED}Unable to find the drive with the sensitive information to restore${ENDC}"
fi

# Set Terminal settings
./extras/terminal.js && \

# Perform the build
echo -e "${BLUE}"Running ansible playbook ...${ENDC}"
ansible-playbook -i localhost, -e ansible_python_interpreter=/usr/local/bin/python3 macSetup.yaml && \

# Launchpad
./CONFIG/launchpad.py build dock.yaml

# Disable passwordless sudo after the macbuild is complete
sudo sed -i -e "s/^%admin.*/%admin  ALL=(ALL) ALL/" /etc/sudoers

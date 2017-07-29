#!/bin/sh

fancy_echo() {
  local fmt="$1"; shift

  # shellcheck disable=SC2059
  printf "\n$fmt\n" "$@"
}

fancy_echo "Boostrapping ..."

trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT

set -e

if ! command -v cc >/dev/null; then
  fancy_echo "Installing Apple's XCode ..."
  xcode-select --install 
else
  fancy_echo "Xcode already installed ...skipping."
fi

if ! command -v brew >/dev/null; then
  fancy_echo "Installing Homebrew ..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null
else
  fancy_echo "Homebrew already installed ... skipping."
fi

  fancy_echo "Updating Homebrew ..."
  brew update
  brew doctor

if ! command -v ansible >/dev/null; then
  fancy_echo "Installing Ansible ..."
  brew install ansible 
else
  fancy_echo "Ansible already installed ... skipping."
fi

# Clone the repository to your local drive.
if [ -d "./macSetup" ]; then
  fancy_echo "A copy of the Github repository is already present. Removing ..."
  rm -rf ./macSetup/
fi
fancy_echo "Cloning macSetup repository ..."
cd
git clone https://github.com/bhdicaire/macSetup.git 
cd ~/macSetup

# Run this from the same directory as this README file. 
fancy_echo "Running ansible playbook ..."
ansible-playbook playbook.yml -i hosts --ask-sudo-pass -vvvv 

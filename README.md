# macSetup
Ansible code to build my Mac from scratch

## Introduction

My objective is to fully automate macOS installation and configuration using Ansible. Lots of stuff in here you probably don't need/ want, and some that needs personalization for your system.

Some fun stuff, though, feel free to fork, fix, enhance, and send pull requests.

## Requirements
The various configuration files are tested on OS X Sierra (10.12). Older operating system versions may work — your mileage may vary.

These are a series of scripts. Many are derived from prior works of open source, but some original URLs have been lost. Please point out any original art URLs and they will be added. I always strive to give credit to prior art authors.

## Done
I have currently implemented the following:

* **macOS & Software Defaults**: Updating of plist properties for various
  aspects of macOS and software configuration.  This uses a custom plist module
  which allows for complex updates of plist files far beyond the defaults
  command.  The plist module is a modified version of
  [Matthias Neugebauer's plist module](https://github.com/mtneug/ansible-modules-plist).
* **Unix Package Installation**: This is being accomplish with the use of
  [homebrew](https://github.com/Homebrew/homebrew).
* **Desktop Application Installation**: This is being performed with the use
  of [homebrew-cask](https://github.com/caskroom/homebrew-cask).
* **Appstore Application Installation**: This is being performed with the use
  of [MAS](https://github.com/).  You need to login in the app ...
* **Configuration Files & Symlinks**: Any files and folders that are to be
  copied or symlinked, including app settings, licenses and dotfiles.
* **Dock Configuration**: Automatic building of the Dock using
  [dockutil](https://github.com/kcrawford/dockutil).
* **Default Apps**: File associations for various applications using
  [duti](https://github.com/moretension/duti).
* **Startup Setup**: Ensures that the required items start on startup using
  [loginitems](https://github.com/OJFord/loginitems).
* **Terminal Customisation**: Setting up the Terminal using JXA.

## Install

Download, *review*, then execute the script:

1. Connect an ethernet adapter to accelerate the installation thus no wifi credential is on the computer
2. Install the current macOS version via cmd option r (internet rescue) or via a usb key.
   a. Enable location service
   b. Disable analytics and Siri
   c. Skip AppleID
   d, Create an admin user, in my case BHD
   e. Open the App Store and update all softwares
   f. Restart
3. Create a second account and let’s encrypt the internal HD
  a. Create your regular user, in my case BHDicaire
  b. Modify login option
    1. Display login windows as Name and Password
    2. Disable fast user switching
  c. Open Terminal
  d. sudo fdesetup enable
  e. Copy the recovery key via AirDrop
  f. Restart
4. Enable firmware protection
  a. [Command] R
  b. Utilities --> Firmware Password Utility
  c. Restart
5. Prepared the environment
  a. Login as the regular user
  b. Open Terminal
  c. git --version
  d. Install the command line developper tools as proposed by the Operating System :)
  e. git --version
  f. Open app store and login with your Apple ID
  g. git clone https://github.com/bhdicaire/macSetup.git
  h. cd macSetup
  i. ./macSetup.sh

Your last mac-setup run will be saved to ~/mac-setup.log. Read through it to see if you can debug the issue yourself.

Now, run the following in your Terminal to use my configuration:

curl --remote-name https://github.com/bhdicaire/mac-setup/blob/master/run less mac
> sh mac 2>&1 | tee ~/mac-setup.log

It is strongly suggested that you reboot your Mac after the first run
of this tool.

If you wish to install the various sample libraries and sound packs, connect
one of your backup drives and run the following:

```bash
./extras/samples.py
```

## Can I accelerate the process?

1. Copy a Homebrew cache backup to `~/Library/Caches/Homebrew`
2. Copy App Store apps that you have previously downloaded to `/Applications`
3. Copy `System Automation` containing various settings and licenses to `~/Documents`
4. Install Apple's Command Line Tools manually to avoid them being re-downloaded

## Manual Tasks

The following tasks must be performed manually as I have yet to find a way to
automate them.

### Installation & Configuration (macOS)

* **Finder**: Setup sidebar containing favourites
* **Services**: In System Preferences / Keyboard / Services, enable 'New Terminal at Folder' and 'New Terminal Tab at Folder'
* **Screen Saver**: Set the screen saver to 'Flurry'
* **Notification Centre**: Set the order of items and allow permission
* **Safari**: Install extensions (1Password and Adblock Plus)
* **App Store Login Items**: Start App Store menubar apps and set them to start
  at login (AppCleaner and OneDrive)
* **Keyboard Shortcuts**: Under System Preferences / Keyboard:
    - Set 'Show Launchpad' to F14 under 'Launchpad & Dock'
    - Set 'Show Notification Center' to F15 under 'Mission Control'
    - Set 'Show Desktop' to F13 under 'Mission Control'
    - Disable 'Show Dashboard' under 'Mission Control'

### Installation & Configuration (General)

* **Dropbox**: Disable camera uploads

### Manual Licensing

* **Microsoft Office**

## Software Deactivation

The following software should be deactivated before re-installing macOS:

* TBD

## References

SIt on the shoulder of giant

https://github.com/fgimian/macbuild

### Projects

* [mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)
* [ansible-modules-plist](https://github.com/mtneug/ansible-modules-plist)
* [legacy-common](https://github.com/osxc/legacy-common)
* [custom-ansible-osx](https://github.com/mtneug/custom-ansible-osx)



## Author

Benoît H. Dicaire, http://github.com/BHDicaire, @BHDicaire, BH@Dicaire.com, http://BHDicaire.com/


### About

I help organizations facing difficult strategic decision-making.

I am a freelance security expert and a keynote speaker in French and English. Over the last 25 years, I have led consulting engagements for well-known companies throughout North America.

I'm [available for hire](http://dicaire.com/).  I’d be pleased to discuss your requirements.


### Blog Posts

* [Automating your development environment with Ansible](http://www.nickhammond.com/automating-development-environment-ansible/)
* [How to automate your Mac OS X setup with Ansible](https://blog.vandenbrand.org/2016/01/04/how-to-automate-your-mac-os-x-setup-with-ansible/)
* [Using Ansible to automate OSX installs via Superlumic](http://vanderveer.be/2015/09/27/using-ansible-to-automate-osx-installs-via-superlumic.html)
* [How to Bootstrap a new OS X Environment with Ansible](http://flounderedge.com/bootstrap-new-os-x-environment-ansible/)
* [Automation of Installation on Mac w/ Ansible](https://medium.com/@hackyGQ/automation-of-installation-on-mac-w-ansible-21354cce0d7b#.j7rujxwgc)


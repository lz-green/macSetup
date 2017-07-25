# macSetup
Ansible code to build my Mac from scratch

## Introduction

My objective is to fully automate macOS installation and configuration using Ansible.

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

## Quick Start

1. Connect an ethernet adapter to accelerate the installation thus no wifi credential is on the computer
2. Install the current macOS version via cmd option r (internet rescue) or via a usb key.
   a. Enable location service
   b. Disable analytics and Siri
   c. Skip AppleID
   d, Create an admin user, in my case BHD
   e. Open the App Store and update all softwares
   f. Restart
   g. open Terminal
sudo. fdesetup Enablecopy the recovery key via AirDrop
restart
Create your regular user, in my case BHDicaire
Modify login option
 - Display login windows as Name and Password
 - Disable fast user switching
shutdown
3. firmware protection
  a. command r
  b. Utilities --> Firmware Password utility
  c. restart
4. Prepared the environment
login as the regular user
open Terminal
git --version
install the command line developper tools as proposed by the Operating System :)
git --version
open app store and login with your Apple ID
git clone https://github.com/bhdicaire/macSetup.git
cd macSetup
./macSetup.sh
, <##>)
Before you get started, you may wish to perform the following steps to save
time and ensure everything works as expected:

1. Copy a Homebrew cache backup to `~/Library/Caches/Homebrew`
2. Copy App Store apps that you have previously downloaded to `/Applications`
3. Copy `System Automation` containing various settings and licenses to `~/Documents`
4. Install Apple's Command Line Tools manually to avoid them being re-downloaded

Now, run the following in your Terminal to use my configuration:

```bash
git clone https://github.com/fgimian/macbuild.git
cd macbuild
./macbuild.sh
```

It is strongly suggested that you reboot your Mac after the first run
of this tool.

If you wish to install the various sample libraries and sound packs, connect
one of your backup drives and run the following:

```bash
./extras/samples.py
```

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

* **Audio Hijack**: Start the app multiple times to dismiss welcome and mailing
  list alerts.  You must also install Instant On to ensure the app works.
* **Clear**: Enable iCloud
* **Focus**: Start Focus manually as it won't initialise successfully with
  launchd starting it for the first time.
* **Dropbox**: Disable camera uploads
* **Forklift**: Sidebar containing favourites and view settings
* **World Clock**: Country selection settings

### Installation & Configuration (Music Production)

* **Ableton Live Suite**: Preferences including skin selection
* **Ableton Sample Packs**: Installation of Ableton Live sounds
* **Apple Logic Pro X**: Preferences and key bindings
* **Steinberg Cubase Pro**: Preferences and key bindings
* **Default Plug-in Presets**: Setup default presets for your most used VST
  effects and instruments

### Manual Licensing

* **Microsoft Office**
* **Cytomic The Drop & The Glue**
* **LennarDigital Sylenth1**
* **Native Instruments Komplete**
* **Novation Bass Station**

## Software Deactivation

The following software should be deactivated before re-installing macOS:

* **Celemony Melodyne Editor**
* **LennarDigital Sylenth1**

## References

SIt on the shoulder of giant

https://github.com/fgimian/macbuild

### Projects

* [mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)
* [ansible-modules-plist](https://github.com/mtneug/ansible-modules-plist)
* [legacy-common](https://github.com/osxc/legacy-common)
* [custom-ansible-osx](https://github.com/mtneug/custom-ansible-osx)


### Blog Posts

* [Automating your development environment with Ansible](http://www.nickhammond.com/automating-development-environment-ansible/)
* [How to automate your Mac OS X setup with Ansible](https://blog.vandenbrand.org/2016/01/04/how-to-automate-your-mac-os-x-setup-with-ansible/)
* [Using Ansible to automate OSX installs via Superlumic](http://vanderveer.be/2015/09/27/using-ansible-to-automate-osx-installs-via-superlumic.html)
* [How to Bootstrap a new OS X Environment with Ansible](http://flounderedge.com/bootstrap-new-os-x-environment-ansible/)
* [Automation of Installation on Mac w/ Ansible](https://medium.com/@hackyGQ/automation-of-installation-on-mac-w-ansible-21354cce0d7b#.j7rujxwgc)


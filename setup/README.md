# A Fresh Start with your Macintosh

## Requirements
The various configuration files are tested on OS X Sierra (10.12). Older operating system versions may work — your mileage may vary.

Download, *review*, then execute the scripts.

## Getting ready

As we will be formatting the hard drive which will wipe all information, it’s prudent to backup any important files along with your current profile.

For example, I’m using make backup to copy a few important files to a git folder on my Dropbox folder and pushing the update to my (GitHub repository)[https://github.com/bhdicaire/macSetup]. We can’t be to cautious.

### Creating a Mac OSX install disk

Let’s create a bootable USB drive with the OSX installer. Please use a USB drive without any important information as the drive will be erased by following steps.

* Download Mac OS X installer from the App store
* Insert a 8GB or larger USB drive
* Create Bootable OSX disk shell 
  
For El Capitan on a Volume called `Untitled`:
  
    sudo /Applications/Install\ OS\ X\ El\ Capitan.app/Contents/Resources/createinstallmedia --volume /Volumes/Untitled --applicationpath /Applications/Install\ OS\ X\ El\ Capitan.app --nointeraction`

## Installing the operating system

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
  b. You’re ready to start the (ansible installation)[https://github.com/bhdicaire/macSetup/README.md]

## Author

Benoît H. Dicaire, http://github.com/BHDicaire, @BHDicaire, BH@Dicaire.com, http://BHDicaire.com/

### About

I help organizations facing difficult strategic decision-making.

I am a freelance security expert and a keynote speaker in French and English. Over the last 25 years, I have led consulting engagements for well-known companies throughout North America.

I'm [available for hire](http://dicaire.com/).  I’d be pleased to discuss your requirements.
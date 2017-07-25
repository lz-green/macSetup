su - bhd
cd /private/tftpboot
sudo launchctl load -F /System/Library/LaunchDaemons/tftp.plist
sudo launchctl start com.apple.tftpd
ls -al

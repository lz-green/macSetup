
#!/bin/bash
ps cax | grep Dropbox > /dev/null
if [ $? -eq 0 ]; then
  killall Dropbox
else
  open -a Dropbox
fi
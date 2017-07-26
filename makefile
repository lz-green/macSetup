all:	backup

build:	build.o
backup:	copy git

copy:	copy.o
git:	git.o
Hello:	hello.o

copy.o:	makefile
	cp ~/.bash* ~/Dropbox/apps/macSetup/dot
# 	cp -r ~/.bin ~/Dropbox/apps/macSetup/bin
	cp ~/Library/Services/ ~/Dropbox/apps/macSetup/Services
	cp ~/Library/Colors/*.clr ~/Dropbox/apps/macSetup/colors
	cp ~/Library/Preferences/com.apple.Terminal.plist ~/Dropbox/apps/macSetup/terminal
	
	# cp -r ~/Library/???? ~/Dropbox/apps/macSetup/Marked2
	# cp -r ~/Library/???? ~/Dropbox/apps/macSetup/karabiner
	# cp -r ~/Library/???? ~/Dropbox/apps/macSetup/bbedit
	
build.o: makefile
	cp ~/Dropbox/apps/macSetup/dot ~
	cp -r ~/Dropbox/apps/macSetup/bin ~/.bin
	cp ~/Dropbox/apps/macSetup/Services ~/Library/Services/


git.o:	makefile
	git add -A
  git commit -m "20170725 Update"
	git push origin master

hello.o: makefile
	echo -e “Coucou”

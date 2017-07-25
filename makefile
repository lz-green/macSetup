all:	backup

build:	build.o
backup:	copy git

copy:	copy.o
git:	git.o

copy.o:	makefile
	cp ~/.bash* ~/Dropbox/apps/macSetup/dot
	cp -r ~/.bin ~/Dropbox/apps/macSetup/bin
	cp -r ~/Library/Services/ ~/Dropbox/apps/macSetup/Services
	# cp -r ~/Library/???? ~/Dropbox/apps/macSetup/Marked2
	# cp -r ~/Library/???? ~/Dropbox/apps/macSetup/karabiner
	# cp -r ~/Library/???? ~/Dropbox/apps/macSetup/bbedit
	
build.o:	makefile
	cp ~/Dropbox/apps/macSetup/dot ~
	cp -r ~/Dropbox/apps/macSetup/bin ~/.bin
	cp ~/Dropbox/apps/macSetup/Services ~/Library/Services/


git.o:	makefile
	git add -A
  git commit -m "20170725 Update"
	git push origin master

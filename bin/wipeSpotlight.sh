This will take a while (5 or so mins) and make your Mac go into "jump-jet" mode with the fans, but:

Drop to terminal
type in sudo rm -rf /.Spotlight-V100
then sudo rm -rf /.Spotlight-V200
then sudo mdutil -i off /
then sudo mdutil -i on /
finally sudo mdutil -E /
Basically in sport, it resets spotlight and tells it to reindex EVERYTHING it normally should do on your "Macintosh HD". (Everything unless you've previously added entries to the privacy list)

As I said before, it'll make your fans go crazy for a while, but this is expected.


# Yurt

From [Wikipedia](http://en.wikipedia.org/wiki/Yurt):

> A traditional yurt (from Turkic) or ger (Mongolian) is a portable, round tent
> covered with skins or felt used as a dwelling by nomads in the steppes of
> Central Asia.

Yurt is program for carrying your home with you, wherever you go. Less
poetically, Yurt carries configuration files from your local machine onto remote
machines you log in to. When you log out, Yurt removes the files.

Right now, it's just a hacked up script that you should probably never actually
use. If you do want to actually use it, change the `FILES` line in `yurt.sh` to
copy over the config files you want. You can then run it using:

    $ ./yurt.sh HOSTNAME

## Warnings

+ If you do not specify a hostname, things will fail horribly.
+ Everything gets copied into the home directory on the remote side. You can
  change `remote.sh` if you want things set up properly.
+ It's quite slow, due to the use of multiple SCPs and SSH connections.
+ *Nothing is actually cleaned up yet*. So you will be leaving your files on the
  remote machine.

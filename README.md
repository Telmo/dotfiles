## I miss $HOME Mr Frodo - Samwise Gamgee

These are my personal dotfiles. They have been gathered from different places around the internet and they have been tweaked to fit my workflow.

If you're new to dotfiles, this probably isn't the best starter repository for you.

### Installation ###

If you're crazy and want to clone my dots anyway:

```
git clone https://github.com/telmo/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

The install script will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though. All files and folders ending in `.symlink` get, you guessed it,
symlinked. 

## Main elements ##

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- **bin/osx-bin/**: Anything in `bin/osx-bin` will get added to your `$PATH` and be made available everywhere if you are running osx
- **bin/linux-bin/**: Anything in `bin/linux-bin` will get added to your `$PATH` and be made available everywhere if you are running linux. This is, if uname returns Linux
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/bootstrap`.


## Extras ##

In the ~/.dotfiles/scripts directories are a couple script to help you along with OSX.

- **ruby\_vim\_install.sh**: It uses rbenv and brew to install a patched version of ruby 1.9.3, for some reason vim needs this patch to load modules or it crashes.
- **1.9.3-p327-patch**: this is the patch used by ruby_vim_install.sh to compile ruby.
- **osx-stuff.sh**: Tweaks to OSX, it enables/disables certain things that drive me nuts

## How come you don't have vim stuff?!

Oh.. but I do! I prefer to manage those in a separate repo:

[Telmo's vim config](https://github.com/Telmo/dotvim)

## Prior art ##

* [Wynn Netherland](https://github.com/pengwynn/dotfiles)
* [Yan Pritzker](http://github.com/skwp/dotfiles)

![mode set](https://secure.gravatar.com/avatar/aa8ea677b07f626479fd280049b0e19f?s=75 "mode set")

We &hearts; the Vim.

# dotset

The default configuration files for Bash and Vim used at [Mode
Set][modeset]. Tuned to play with Apple's Terminal.app.

Installing and updating is handled by the [`./dotset`][dotset] script.
Utility functions are provided by the [`./dotils`][dotils] script.

**Version: v1.0**

## Installation

Get this party started:

    git clone https://github.com/modeset/dotset.git
    cd dotset
    ./dotset install

## Tasks
    Usage: ./dotset [install update uninstall backup help]

    Commands:
      install      Installs dot files, vim files, and various executables
      update       Removes existing setup and installs fresh from git
      uninstall    Restores original dot files (or latest backup)
      backup       Backup the existing dot files from the ~/ directory
      weekly       Runs a weekly update script to keep your machine pure
      help         Print this message

### Install

Installing dotset works based on the following directory structure:

- **bin**: Executables that will melt your brain. _Directory is
  symlinked_
- **config**: Support assets for building out the dot files _Used only
  for configuration_
  - `bundles.txt`: the list of default Vim bundles to install
  - `bundles.local.txt`: the list of user Vim bundles to install
    (_gitignored_)
  - `gems.txt`: the list of default gems to install when running
  `./dotils regem`
  - `gems.local.txt`: the list of user gems to install when running
  `./dotils regem` (_gitignored_)
- **dots**: Various `rc` type files for Bash, Vim, and System settings.
  _All files are symlinked to `~/` direcectory with a dot (`.`) in
  front of them_
- **extras**: Terminal themes and templates. _Nothing installed,
  manually install these_
- **vim**: Directories of files that are symlinked into `~/.vim/`.
  _Only files are symlinked and not entire directories_

### Update

It's recommended to run `./dotset update` once a week. While the
repository might not change very often, most Vim plugins are updated
quite frequently.

The update script will temporarily `uninstall` all of the dot files in
the `~/` directory which were created by dotset in the first place,
pull down the latest dotset updates and reinstall everything fresh. It's
important to note this, as anything you create within `~/.bin/`, `~/.vim/`
that is not connected to this repository will be completely blown away.

### Backup

Dotset creates a backup of any files it may be overriding. It only
creates a new backup when the `./backup/` directory **DOES NOT** exist. If
you want to generate a new backup, just delete the `./backup` directory
and run a new `install` or just call `./dotset backup`.

Don't care about backups? Just create an empty `./backup/` directory.

### Uninstall

To remove files created by dotset and restore from the `./backup/`
directory, run `./dotset uninstall`

### Weekly

Wrapper script for updating various packages including: homebrew, pow,
gems, npm (including global npm packages), and software update. It will
also call `./dotset update` to make sure you have the latest. Run this
puppy once a week.

## Extras, but really just install these

Within the `./extras/` directory are the `bashrc_local.example` and
`vimrc.local.example` files. These are used as templates for overriding
or creating new settings for Bash and Vim. To create these files run the
following from your `~/` directory:

      cp ~/path/to/dotset/extras/basrc_local.example ~/.basrc_local
      cp ~/path/to/dotset/extras/vimrc.local.example ~/.vimrc.local

The files `~/.basrc_local` and `~/.vimrc.local` are sourced by `.bashrc`
and `.vimrc` respectively. It's a good idea to back these files up
somewhere.

Also included are a few `.terminal` color themes. Import these themes
into Apple's Terminal.app and set one as the default. The default
color theme for Vim is `colorblind`. If you want to rock the
alternative color `polarized` as the default, add the following in your
`.vimrc.local` file:

      colorscheme polarized


## Settings

### Rock a sweet Bash setup

The Bash setup is fairly bare bones out of the box. To override or add
any additional settings create the `.bashrc_local` file and add
any customization.

Within this file you should have the following environment variables
set:

      export GIT_AUTHOR_NAME='Your Name'
      export GIT_AUTHOR_EMAIL='your@email'
      export GIT_COMMITTER_NAME='Your Name'
      export GIT_COMMITTER_EMAIL='your@email'
      export GITHUB_USER='Your GitHub Username'
      export GITHUB_TOKEN='Your GitHub token'

Since the `.gitconfig` file does not contain any user info, these are
required to identify who you are. 

The default Bash settings support the [rbenv][rbenv] environment.

### Pimp your Vim ride

We roll a custom installation of Vim over the default Mac installation.
Within the `~/.bash_aliases` file is an alias to [homebrew's][homebrew]
installation for the Vim executable. This executable is installed with
ruby, python, and various other enhancements.

The default configuration comes with various [language and tooling
plugins][bundles.txt]. To add additional plugins, create the file
`./config/bundles.local.txt` and add the git url for the plugin (similar to the
`bundles.txt` file). This file is checked every time the `install`
and `update` script is run.

The `~/.vimrc` file sources `~/.vimrc.local`. Include this file to override
existing settings or set your own. At the least you should have one of
these that sets the following attribute:

      g:snips_author= "Mansfield"

Place this file in your `~/` directory and backup accordingly.

We've created a [list of plugins][deprecated] we've run in the past or
that might be useful for your particular environment.

_Note: All settings are tuned to work within a Terminal. This means
there are no `gui` settings, including the color themes. We only sport
Vim in Apple's Terminal. Keepin' it minimal._

### External dependencies

To take advantage of certain Bash and Vim settings, install the
following:

Program                          | Installation
---------------------------------|-------------------------------------
[ack][ack]                       | `brew install ack`
[ctags][ctags]                   | `brew install ctags`
[hub][hub]                       | `brew install hub` _**Note this is required!**_
[macvim][macvim]                 | `brew install macvim`
[node][node]                     | `brew install node`
[mosh][mosh]                     | `brew install mobile-shell`
[tmux][tmux]                     | `brew install tmux`
[tmux-clipboard][tmux-clipboard] | `brew install reattach-to-user-namespace`
[wemux][wemux]                   | `brew install wemux`
[rbenv][rbenv]                   | `brew install rbenv`
[pow][pow]                       | <code>curl get.pow.cx  | sh</code>
[coffeetags][coffeetags]         | `gem install coffeetags`
[red carpet][redcarpet]          | `gem install redcarpet`
[pry][pry]                       | `gem install pry`
[jshint][jshint]                 | `npm install jshint -g`
[jsonhint][jsonhint]             | `npm install jsonlint -g`


## dotils

The `./dotils` script runs a few extra utility commands for setting or
resetting up the machine.

      Usage: ./dotils [regem osx help]

      Commands:
        osx          Sets reasonable OS X defaults for a new system [http://mths.be/osx], take a look before running.
        help         Print this message

Tune that thing.

## Tips

### Turn caps lock into the control key

The control key is in an awkward position and the caps lock key is
basically useless. It's right there in the home row, so you might as
well put it to good use.

1. Open up System Preferences
- Select `Keyboard`
- Select `Modifier Keys`
- From the drop down, select `^ Control` under the `Caps Lock` setting
- In the `Select Keyboard` drop down, set it for both internal and external keyboards

### Fonts

You look at text all damn day. Do yourself a favor and install the
[MesloGM font][font] and rock the medium variant, size `12`.

### Mouse support for Terminal

To get full mouse support (scrolling, clicking, etc...) within Terminal
Vim, install the [SIMBL][simbl] [MouseTerm][mouseterm] plug-in. It brings the
goodness.

### MSCheat

Within Vim type `:h mscheat` to view key and leader bindings for the
Mode Set configuration.

### Remote Pairing (with tmux)

We use shared tmux sessions for remote pairing. This requires ssh or similar
connections so your IP addresses have to be accessible. For stable and fast
connections over WiFi we highly recommend using [mosh][mosh] it sets up a udp
connection that is more tolerant of wireless latency. Then just install [tmux][tmux]
and the [clipboard shim][tmux-clipboard] to improve the copy and paste functionality
between the user session clipboard and the tmux session. Also install the
[MouseTerm][mouseterm] plugin for a more native scrolling experience.

#### Copy/Paste fallbacks for Tmux

the `tmux.conf` sets some vi key bindings for use when
[MouseTerm][mouseterm] and [clipboard shim][tmux-clipboard] are not
available. 

   ```shell
   ctl-a [ # enters scroll mode, you'll see a buffer indicator on the top right of the window
   # move up or down with arrow keys or j,k
   esc # escape key enters copy mode
   ctl-v # begin selection
   ctl-y # yank highlighted text, this should drop you out of the buffer, if not, hit 'q'
   # go to the tmux pane you want to paste
   ctl-a p # if you want to paste into vim, enter insert mode first, then ctl-a p
   ```


#### wemux

1. Creating a session with wemux
  
   ```shell
   wemux start
   ```
  
- Attaching to a session
Assuming you are shelled into a machine with a running tmux session:

  ```shell
  wemux
  ```

<!-- link ids -->
[ack]: http://betterthangrep.com/
[bundles.txt]: https://github.com/modeset/dotset/blob/master/config/bundles.txt
[coffeetags]: https://github.com/lukaszkorecki/CoffeeTags
[ctags]: http://ctags.sourceforge.net/
[redcarpet]: https://github.com/tanoku/redcarpet/
[deprecated]: https://gist.github.com/3018885
[dotset]: https://github.com/modeset/dotset/blob/master/dotset
[dotils]: https://github.com/modeset/dotset/blob/master/dotils
[font]: https://github.com/andreberg/Meslo-Font
[homebrew]: http://mxcl.github.com/homebrew/
[hub]: http://defunkt.io/hub/
[jshint]: http://www.jshint.com/
[jsonhint]: https://github.com/zaach/jsonlint/
[macvim]: http://code.google.com/p/macvim/
[modeset]: http://www.modeset.com/
[mouseterm]: http://bitheap.org/mouseterm/
[node]: http://nodejs.org/
[pow]: http://pow.cx/
[pry]: http://pry.github.com/
[rbenv]: https://github.com/sstephenson/rbenv
[simbl]: http://www.culater.net/software/SIMBL/SIMBL.php
[mosh]: http://mosh.mit.edu
[tmux]: http://tmux.sourceforge.net
[tmux-clipboard]: https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
[wemux]: https://github.com/zolrath/wemux/


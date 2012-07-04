# dotset
![mode set](https://secure.gravatar.com/avatar/aa8ea677b07f626479fd280049b0e19f?s=48 "mode set")

The default configuration files for Bash and Vim used at [Mode
Set][modeset]. Tuned to play with Apple's Terminal.app.

Installing and updating is handled by the [`./dotset`][dotset] script.

The scripts are inspired by [quick-vim][quick-vim].

**version: v1.0**

TODO: More information about this repository

## Installation

Get this party started:

    git clone https://github.com/modeset/dotset.git
    cd dotset
    ./dotset install

## Tasks
    Usage: ./dotset [install update uninstall backup help]

    Commands:
      install      Installs dotfiles, vimfiles, and various executables
      update       Removes existing setup and installs fresh from git
      uninstall    Restores original dot files (or latest backup)
      backup       Backup the existing dot files from the $HOME directory
      help         Print this message

## Updating

It's recommended to run `./dotset update` once a week. While the
repository might not change very often, most vim plugins are updated
quite frequently.

TODO: Describe updating?

## Rock a sweet Bash setup

TODO: Describe rocking a sweet Bash setup

## Pimp your Vim ride

The default configuration comes with various [language and tooling
plugins][bundles.txt]. To add additional plugins, create the file
`./config/bundles.local.txt` and add the git url for the plugin (similar to the
`bundles.txt` file). This file is checked every time the `install`
and `update` script is run.

We've created a [list of plugins][deprecated] we've run in the past or
that might be useful for your particular environment.

The `.vimrc` file sources `.vimrc.local`. Include this file to override
existing settings or set your own. At the least you should have one of
these that sets the following attribute:

      g:snips_author= "Mansfield"

Place this file in your `$HOME` directory and backup accordingly.

TODO: Describe more shit around vimfiles

## Directory structure

- **bin**: Executables that will melt your brain. (directory is
  symlinked)
- **config**: Support assets for building out the dot files
- **extras**: Terminal themes and templates
- **home**: All files in this directory are symlinked to your `$HOME`
  directory with a dot in front of them
- **vim**: Directories of files that are symlinked into `$HOME/.vim/`
  directory (_note only files are symlinked and not directories_)

## Extras, but really just install these

Within the `extras/` directory are a few `.terminal` color themes. Import
these themes into Apple's Terminal.app and set one as the default.
The default color theme is `colorblind`. If you want to rock the
alternative color `polarized`, add the following in your `.vimrc.user`
file:

      colorscheme polarized

TODO: Describe templates

## dotils

TODO: Describe dotils

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

TODO: Describe how to set this

### Mouse support for Terminal

To get full mouse support (scrolling, clicking, etc...) within Terminal
Vim, install the [SIMBL][simbl] [MouseTerm][mouseterm] plug-in. It brings the 
goodness.

### MSCheat

Within Vim type `:h mscheat` to view key and leader bindings for the 
Mode Set configuration.


## Todo

### Install script

- Add quick update (doesn't pull latest bundles)
- Add function completion for `dotset` and `dotils` script
- noob setting (auto install required gems, brews, npm modules, etc..)

### Bash

- Research more prompts for ssh
- Cleanup the `$PATH` variable
- Configure `.pow`
- Configure `pryrc` - colors should match Vim
- Refactor the `dotset` script

### Vim

- Abstract the color themes based on how Solarized works
- Add a color theme for lighter modes
- Get tagbar to work with css/sass files
- Pure out the snippets
- Possibly bring back the [clang complete][clang] plugin

<!-- link ids -->
[modeset]: http://www.modeset.com/
[dotset]: https://github.com/modeset/dotset/blob/master/dotset
[bundles.txt]: https://github.com/modeset/dotset/blob/master/vimfiles
[deprecated]: https://gist.github.com/3018885
[syntastic]: https://github.com/scrooloose/syntastic
[jshintrc]: https://github.com/modeset/jshintrc
[ack]: http://betterthangrep.com/
[ctags]: http://ctags.sourceforge.net/
[discount]: http://www.pell.portland.or.us/~orc/Code/discount/
[coffeetags]: https://github.com/lukaszkorecki/CoffeeTags
[quick-vim]: https://github.com/brianleroux/quick-vim
[clang]: https://github.com/Rip-Rip/clang_complete
[font]: https://github.com/andreberg/Meslo-Font
[simbl]: http://www.culater.net/software/SIMBL/SIMBL.php
[mouseterm]: http://bitheap.org/mouseterm/


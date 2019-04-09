# eriktiekstra does dotfiles

## Based upon Zach Holman's dotfiles

This repository and way of saving/installing personal dotfiles is based upon [Zach Holman's dotfiles](https://github.com/holman/dotfiles).

## Introduction (same as in [@holman's](https://github.com/holman/dotfiles))

Your dotfiles are how you personalize your system. These are mine.

I was a little tired of having long alias files and everything strewn about (which is extremely common on other dotfiles projects, too). That led to this project being much more topic-centric. I realized I could split a lot of things up into the main areas I used (Ruby, git, system libraries, and so on), so I structured the project accordingly.

If you're interested in the philosophy behind why projects like these are awesome, you might want to [read my post on the subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## topical (same as in [@holman's](https://github.com/holman/dotfiles))

Everything's built around topic areas. If you're adding a new area to your forked dotfiles — say, "Java" — you can simply add a `java` directory and put files in there. Anything with an extension of `.zsh` will get automatically included into your shell. Anything with an extension of `.symlink` will get symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside (same as in [@holman's](https://github.com/holman/dotfiles))

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser above and see what components may mesh up with you. [Fork it](https://github.com/holman/dotfiles/fork), remove what you don't use, and build on what you do use.

## components (same as in [@holman's](https://github.com/holman/dotfiles))

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](https://caskroom.github.io) to install: things like Chrome and 1Password and Adium and stuff. Might want to edit this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/bootstrap`.

## install

Run this:

```sh
git clone https://github.com/eriktiekstra/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap

# The following is probably not necessary as it is ran through antigen
#chsh -s /usr/local/bin/zsh
```

This will symlink the appropriate files in `.dotfiles` to your home directory. Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`, which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane macOS defaults, and so on. Tweak this script, and occasionally run `dot` from time to time to keep your environment fresh and up-to-date. You can find this script in `bin/`.

## reload config

If new settings were added run `reload!` to reload the latest settings.

## Post bootstrap

1. Run cask setups in `open /usr/local/Caskroom`

- Backblaze
- Adobe Creative Cloud

2. Install other applications

- PhpStorm - through JetBrains toolbox
- Amphetamine - through the App Store
- LastPass - through the App Store
- Node - `nvm install [version]`

3. Load Config files for applications

- SSH
  - create SSH keys by running `create-ssh [email address] [rsa or empty for ed25519]`
  - copy public SSH key by running `copy-ssh [file name without .pub]`
- VSCode - through the Settings Sync extension
- PhpStorm - should be installed by logging with my JetBrains account
- iTerm2 - available inside the .dotfiles repository, should load automatically
- IStat menu
- Tunnelblick - available through [PIA](https://www.privateinternetaccess.com/pages/client-support/osx-openvpn-tunnelblick)
  - [Download .ovpn files](https://www.privateinternetaccess.com/openvpn/openvpn.zip)
  - Unzip the folder
  - Remove the files not needed
  - Rename the folder to have `tblk` as extension
  - Dubbelclick the file to open the settings inside Tunnelblick
- WA Developer tools - `wa setup dev`

4. Register licenses for applications

- Sketch
- IStat Menu
- Dash

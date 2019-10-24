# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/projects/std/linux-setup/bin" ] ; then
    PATH="$HOME/projects/std/linux-setup/bin:$PATH"
fi

if [ -d "$HOME/tools/nim/bin" ] ; then
    PATH="$HOME/tools/nim/bin:$PATH"
fi

if [ -d "$HOME/.nimble/bin" ] ; then
    PATH="$HOME/.nimble/bin:$PATH"
fi

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  . /usr/local/bin/virtualenvwrapper.sh
fi
if [ -e /home/std/.nix-profile/etc/profile.d/nix.sh ]; then . /home/std/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

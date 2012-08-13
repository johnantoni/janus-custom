#!/usr/bin/env ruby

# update plugins
exec("git submodule -q foreach git pull -q origin master")

# symlink files
exec("ln -s ~/.janus/.ackrc ~/.ackrc")
exec("ln -s ~/.janus/.vimrc.before ~/.vimrc.before")
exec("ln -s ~/.janus/.vimrc.after ~/.vimrc.after")

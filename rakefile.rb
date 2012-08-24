#!/usr/bin/env ruby

task :default do
  # symlink files
  system("ln -s ~/.janus/.ackrc ~/.ackrc")
  system("ln -s ~/.janus/.vimrc.before ~/.vimrc.before")
  system("ln -s ~/.janus/.vimrc.after ~/.vimrc.after")
end

task :update do
  # update plugins
  system("git submodule -q foreach git pull -q origin master")
end

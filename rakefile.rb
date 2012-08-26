#!/usr/bin/env ruby

task :default do
  # symlink files
  system("ln -s ~/.janus/.ackrc ~/.ackrc")
  system("ln -s ~/.janus/.vimrc.before ~/.vimrc.before")
  system("ln -s ~/.janus/.vimrc.after ~/.vimrc.after")

  Rake::Task["update"].invoke
end

task :update do
  # update plugins
  system("git pull && git submodule init && git submodule update && git submodule status")
end

# my customized .janus config

customized janus config for vim & macvim

## to install:

first install janus: 
    cd ~/.
    curl -Lo- http://bit.ly/janus-bootstrap | bash

then pull this repo to create your own .janus config
    git clone git://github.com/johnantoni/janus-custom.git ~/.janus

then symlink the .vimrc.before & .after files in .janus to the home dir by running
    ~/.janus/symlink

## upgrade submodules:

It's simple to upgrade the sub-modules, simply run
    ~/.janus/upgrade

## included:

* tabular: Vim script for text filtering and alignment
* vim-coffee-script: coffeescript for vim
* vim-endwise: wisely add "end" in ruby, endfunction/endif/more in vim script, etc
* vim-indent-guides: add indent guides to your code

## customs:

all in the .vimrc.before & .vimrc.after

* map leader to ','
* map leader+b to toggle buffergator
* map leader+p to start ctrl+p search
* map leader+a to start in-file-search with Ack
* tab length locked to 2
* status line show file editing, it's type (ruby) and on the far right the line number & character
* current line auto-highlighted
* theme used molokai

## notes:

* you can start a block selection (visual mode) with leader+v then your command (ctrl+c = copy selection)
* use command+/ to comment out each successive line
* use command+[ or command+] to indent a line or selection
* use leader+n to toggle NERDTree

once the buffergator navigator is open you can close a buffer by using the arrow keys to navigate to it and hitting 'x' to close it

## todo:

* find out why ack doesn't work on loading macvim via osx or "open new
  macvim buffer here" but works when loaded via mvim .



# my customized .janus config

customized janus config for vim & macvim

## to install:

### requirements

    sudo apt-get install ack-grep
    sudo ln -sf /usr/bin/ack-grep /usr/local/bin/ack

### ready to install

first install janus: 

    cd ~
    curl -Lo- http://bit.ly/janus-bootstrap | bash

then pull this repo to create your own .janus config

    git clone git://github.com/johnantoni/janus-custom.git ~/.janus

then finally install the symlinks and upgrade the plugins via

    cd ~/.janus
    rake

## included:

* tabular: Vim script for text filtering and alignment
* vim-coffee-script: coffeescript for vim
* vim-endwise: wisely add "end" in ruby, endfunction/endif/more in vim script, etc

## help:

* ; will be interpreted as : (saves an extra keystroke)

* leader n => open nerdtree
* leader r => rename current file
* ctrl+a => do an ack search (search for text in files in current root)
* ctri+t => do a ctrl+p search (jump to file ala textmate)
* ctrl+s => save file

### in nerdtree

* m => modify node
* m then a => create new file/dir
* r => refresh nerdtree

## customs:

all in the .vimrc.before & .vimrc.after

* map leader to ','
* map leader+b to toggle buffergator
* map leader+p to start ctrl+p search
* map leader+a to start in-file-search with Ack
* tab length locked to 2
* status line show file editing, it's type (ruby) and on the far right the line number & character
* current line auto-highlighted
* theme used grb256
* nerdtree disabled for gvim/macvim (latest builds have a sidebar
  built-in)

## notes:

press f5 to clear the ctrl-p cache, vendor/bundle is excluded by default

once the buffergator navigator is open you can close a buffer by using the arrow keys to navigate to it and hitting 'x' to close it

## ir_black osx theme

To keep things consist thru the terminal, try @fyrabanks ir_black theme. Download it from here https://github.com/johnantoni/ir_black_terminal

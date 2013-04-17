# My customized .janus config

customized janus config for vim & macvim

## Install

### Requirements

    sudo apt-get install ack-grep
    sudo ln -sf /usr/bin/ack-grep /usr/local/bin/ack

### Install Janus

    cd ~
    curl -Lo- http://bit.ly/janus-bootstrap | bash

### Install this Repo

    git clone git://github.com/johnantoni/janus-custom.git ~/.janus

### Install symlinks

    cd ~/.janus
    rake

### Includes

* tabular: Vim script for text filtering and alignment
* vim-coffee-script: coffeescript for vim
* vim-endwise: wisely add "end" in ruby, endfunction/endif/more in vim script, etc

### ir_black osx theme

To keep things consist thru the terminal, try @fyrabanks ir_black theme. Download it from here https://github.com/johnantoni/ir_black_terminal

## Customisations

* ; will be interpreted as : (saves an extra keystroke)
* leader n => open nerdtree
* leader r => rename current file
* ctrl+a => do an ack search (search for text in files in current root)
* ctri+t => do a ctrl+p search (jump to file ala textmate)
* ctrl+s => save file

* map leader to ','
* map leader+b to toggle buffergator
* map leader+p to start ctrl+p search
* map leader+a to start in-file-search with Ack
* tab length locked to 2
* status line show file editing, it's type (ruby) and on the far right the line number & character
* current line auto-highlighted

### In NerdTree

* m => modify node
* m then a => create new file/dir
* r => refresh nerdtree

# Help

## CUT/COPY/PASTE

Ever try to cut (or copy) some lines and paste to another place? If you need to count the lines first, then try these to eliminate counting task.
Cut and paste:

* Position the cursor where you want to begin cutting.
* Press v (or upper case V if you want to cut whole lines).
* Move the cursor to the end of what you want to cut.
* Press d.
* Move to where you would like to paste.
* Press p to paste after the cursor, or P to paste before.
* Copy and paste can be performed with the same steps, only pressing y instead of d in step 4.
* The name of the mark used is related to the operation (d:delete or y:yank).

I found that those mark names requires minimal movement of my finger.

## UNDO

press 'u' to undo

## Extras

Press f5 to clear the ctrl-p cache, vendor/bundle is excluded by default

Once the buffergator navigator is open you can close a buffer by using the arrow keys to navigate to it and hitting 'x' to close it

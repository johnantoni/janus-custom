" ---------------------------------------------------------
" Plugin configs
" ---------------------------------------------------------
" NERDTree
nmap <leader>n :NERDTreeToggle<CR>

" ACK
map <leader>a :Ack<space>

" BufferGator
map <leader>b :BuffergatorToggle<cr> " toggle view
let g:buffergator_suppress_keymaps = 1 " suppress BufferGator default mapping

" CTRL-P
map <leader>t :CtrlPMixed<ENTER>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1 " make dotfiles searchable

" Exclude content from searching
set wildignore+=*/vendor/bundle/*
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc$',
  \ 'file': '\.exe$\|\.so$\|\.dat$\|\.gitkeep$\|\Gemfile.lock$\|\.DS_Store',
  \ }

" https://github.com/kien/ctrlp.vim/issues/160 selections open in new tab
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': ['<c-t>'],
  \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
  \ }

" ---------------------------------------------------------
" Key maps
" ---------------------------------------------------------
" Substitute :Q for :q to save retypes
command! Q q
" Substitute ; for : to save keystrokes
nnoremap ; :
" Use leader+leader as :
nnoremap <Leader><Leader> :

" ctrl+s save (insert & normal mode)
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" type jj quickly to exit insert mode
imap jj <Esc>
" ctrl+l goto end of line insert mode
imap <C-l> <esc>$a

" jumps to the next line of long lines of text, useful for moving around
map j gj
map k gk

" if a file needs sudo access to write, make it so
cnoreabbrev <expr> w!!
                \((getcmdtype() == ':' && getcmdline() == 'w!!')
                \?('!sudo tee % >/dev/null'):('w!!'))

nmap <silent> ,/ :nohlsearch<CR> " clear search buffer

" --------------------------------------------------------
" Leader keys
" ---------------------------------------------------------
" stop using ctrl+something, bad habit

" notes
"<leader>gb maps to :Gblame<CR>
"<leader>gs maps to :Gstatus<CR>
"<leader>gd maps to :Gdiff<CR>
"<leader>gl maps to :Glog<CR>
"<leader>gc maps to :Gcommit<CR>
"<leader>gp maps to :Git push<CR>

" save
map <leader>s :w!<CR>
map <leader>w :w!<CR>
" save and close
map <leader>W :wq!<CR>
" close current window
map <leader>q :q!<CR>
" close all windows
map <leader>Q :qa!<CR>

" open files in directory of current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

" ctrl+p rails shortcuts
map <leader>ec :CtrlP app/controllers<cr>
map <leader>ea :CtrlP app<cr>
map <leader>em :CtrlP app/models<cr>
map <leader>ev :CtrlP app/views<cr>

" navigate windows
" move to the window left
" move to the window below
" move to the window above
" move to the window right
map <Leader>h <C-W>h
map <Leader>j <C-W>j
map <Leader>k <C-W>k
map <Leader>l <C-W>l
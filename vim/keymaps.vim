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
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_max_height = 50
let g:ctrlp_switch_buffer = 'Et'
set wildignore+=*/vendor/bundle/*
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
set wildignore+=*.png,*.PNG,*.JPG,*.jpg,*.GIF,*.gif,vendor/**,coverage/**,tmp/**,rdoc/**
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc$',
  \ 'file': '\.exe$\|\.so$\|\.dat$\|\.gitkeep$\|\Gemfile.lock$\|\.DS_Store',
  \ }

" https://github.com/kien/ctrlp.vim/issues/160 selections open in new tab
" let g:ctrlp_prompt_mappings = {
"  \ 'AcceptSelection("e")': ['<c-t>'],
"  \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
"  \ }

" ---------------------------------------------------------
" Key maps
" ---------------------------------------------------------

" catch typos
command! Q q
nnoremap ; :
nnoremap <Leader><Leader> :

" ctrl+s save (insert & normal mode)
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" type jj quickly to exit insert mode
imap jj <Esc>
" ctrl+l goto end of line insert mode
imap <C-l> <esc>$a

" move up/down long lines
nmap k gk
nmap j gj

" if a file needs sudo access to write, make it so
cnoreabbrev <expr> w!!
                \((getcmdtype() == ':' && getcmdline() == 'w!!')
                \?('!sudo tee % >/dev/null'):('w!!'))

nmap <silent> ,/ :nohlsearch<CR> " clear search buffer

" --------------------------------------------------------
" Leader keys
" ---------------------------------------------------------

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
map <leader>W :wq!<CR>
map <leader>q :q!<CR>
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
map <Leader>h <C-W>h
map <Leader>j <C-W>j
map <Leader>k <C-W>k
map <Leader>l <C-W>l

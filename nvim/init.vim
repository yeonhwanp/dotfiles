" Python Path
let g:python3_host_prog = '/Users/brianpark/miniforge3/bin/python3'

" Simple Keybindings and Configs
:imap jk <ESC>
:set tabstop=4
:set shiftwidth=4
:set autoindent
:set number
:set expandtab
:syntax on
:set smarttab
let g:airline_powerline_fonts=1

"Imports
runtime ./plug.vim

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Color Scheme
colorscheme NeoSolarized

" Splitting Windows
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Moving Windows
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-
" Switch Tab
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

" coc
let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-tsserver',
    \ 'coc-prettier',
    \ 'coc-eslint',
    \ ]


"" General Settings
syntax on
set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set expandtab
set smartindent
set scrolloff=5
set incsearch
set ruler
set ic


filetype on
filetype plugin on

"" Custom mapping for dealing with indentions
nnoremap <Tab> za
nnoremap <Space> zO

"" Turn off matches that are highlighted
nnoremap <F2> :nohl<ENTER>

"" Map <F3> to toggle NERDTree
""nnoremap <silent> <F3> :NERDTreeToggle<Enter>

"" Shortcut to show the current file
nnoremap ff :echo<Space>expand('%:p')<Enter>

"" Setup for better splitting
set splitright
set splitbelow

"" Show tabs as --->
set encoding=utf-8
set list
set listchars=tab:>-

"" Show matches
set hlsearch

colorscheme dracula
if &diff
    colorscheme default
endif


hi Normal ctermbg=none

"" highlight the current line
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

"" Enabe syntax highlighting for nmap scrips
autocmd BufNewFile,BufReadPost *.nse set filetype=lua

execute pathogen#infect()

"" Change the status so vim-airline is already showing when we start
set laststatus=2

""set the comment types for commentary
autocmd FileType vim setlocal commentstring=""\ %s
autocmd FileType python,perl setlocal commentstring=#\ %s


autocmd FileType make set noexpandtab

"" Install plugins
""  vim-airline
""  nerdtree
""  vim-airline-themes
""  vim-better-whitespace
""  vim-commentary
""  git-gutter

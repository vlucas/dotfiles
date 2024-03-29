set relativenumber                          " Show line numbers relative to each other
set number                                  " Show the current lines number w/ relative numbers around it
set ruler                                   " Show ruler
set listchars=trail:.,tab:>-,eol:¬          " Change the invisible characters
set noswapfile                              " Don't create annoying *.swp files
set scrolloff=5                             " Start scrolling the file 5 lines before the end of the window
set spelllang=en_us                         " Set default spelling language to English
set hidden                                  " Allow hiding buffers with unsaved changes
set wildmenu                                " Make tab completion act more like bash
set wildmode=list:longest                   " Tab complete to longest common string, like bash
set showcmd                                 " Display an incomplete command in the lower right corner
set showmode                                " Show current mode down the bottom
set laststatus=2                            " Always show the status line
set history=10000
set autoread
set noerrorbells visualbell t_vb=           " No more error bells
set iskeyword+=\-                           " Auto complete words with dashes

autocmd FileType gitcommit set spell        " Turn on spell check in Git commits.

" Set Mouse Mode
" set mouse=a
" set ttymouse=xterm2

" Treat dashed words as whole words in stylesheets
autocmd Filetype css,scss,sass setlocal iskeyword+=-

" Searching
set hlsearch                                " Highlight searches
set incsearch                               " Highlight search results instantly
set ignorecase                              " Ignore case
set smartcase                               " Override 'ignorecase' option if the search contains upper case characters.

" Indentation
set shiftwidth=2                            " Number of spaces to use in each autoindent step
set tabstop=2                               " Two tab spaces
set softtabstop=2                           " Number of spaces to skip or insert when <BS>ing or <Tab>ing
set expandtab                               " Spaces instead of tabs for better cross-editor compatibility
set autoindent                              " Keep the indent when creating a new line
set smarttab                                " Use shiftwidth and softtabstop to insert or delete (on <BS>) blanks
set cindent                                 " Recommended seting for automatic C-style indentation

" Color column at 120 characters
set colorcolumn=120
set textwidth=120

" Clipboard (vim must be installed with +clipboard feature (run vim --version))
"set clipboard=unnamedplus
set clipboard=unnamed

" Undo
if !isdirectory(expand("~/.vim/.undo/"))
  silent !mkdir -p ~/.vim/.undo/
endif
set undodir=$HOME/.vim/.undo
set undofile
set undolevels=1000
set undoreload=10000

" Colorscheme
syntax on
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

highlight SignColumn ctermbg=8

" Set wildcard ignore for ctrlp and ack/ag
set wildignore+=*/tmp/*,node_modules/*,vendor/bundle/*,*/build/*,*/Resources/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif,.gitkeep

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

" NERDTree toggle hotkey
map <C-n> :NERDTreeToggle<CR>
" exit NERDTree if it is the last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Prettier auto-formatting on save
" =============================================
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0
" =============================================


" TypeScript CoC
" @link https://github.com/neoclide/coc.nvim#example-vim-configuration
" =============================================
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-prettier', 'coc-json', 'coc-css', 'coc-markdownlint' ]

" Add Prettier command to format whole file
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Formatting selection
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Apply AutoFix/"quick fix" to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <Tab> completion
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" =============================================

" Enable completion where available.
" This setting must be set before ALE is loaded.
"let g:ale_completion_enabled = 1

source ~/.vim/plugins.vim
source ~/.vim/ctrlp.vim

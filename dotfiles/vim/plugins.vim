" Install vim-plug if it does not exist (used for plugins)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Run plugin installs
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'benmills/vimux'
Plug 'mattboehm/vim-unstack' " parse stack traces

Plug 'tpope/vim-pathogen'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat' " easily repeat map functions
Plug 'tpope/vim-sensible' " sensible vim defaults
Plug 'tmhedberg/matchit' " extend % mathcing to HTML, LaTeX, etc.

" Autocomplete
"Plug 'ycm-core/YouCompleteMe' " awesome, but requires compilation
Plug 'lifepillar/vim-mucomplete' "lighter weight, but not that good...

" Text objs
Plug 'kurkale6ka/vim-pairs'

" Tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'blueyed/vim-diminactive'

" Editing
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'mbbill/undotree'
Plug 'henrik/vim-indexed-search'
Plug 'mattn/emmet-vim'

" Modern JavaScript+TypeScript Support
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax

" Autocomplete + TypeScript Server
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocomplete + TypeScript Server
"let g:coc_global_extensions = [ 'coc-tsserver' ]

" Colors
Plug 'altercation/vim-colors-solarized'

" Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }

call plug#end()" Install vim-plug if it does not exist (used for plugins)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Run plugin installs
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'benmills/vimux'
Plug 'mattboehm/vim-unstack' " parse stack traces

Plug 'tpope/vim-pathogen'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat' " easily repeat map functions
Plug 'tpope/vim-sensible' " sensible vim defaults
Plug 'tmhedberg/matchit' " extend % mathcing to HTML, LaTeX, etc.

" Autocomplete
"Plug 'ycm-core/YouCompleteMe' " awesome, but requires compilation
Plug 'lifepillar/vim-mucomplete' "lighter weight, but not that good...

" Text objs
Plug 'kurkale6ka/vim-pairs'

" Tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'blueyed/vim-diminactive'

" Editing
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'mbbill/undotree'
Plug 'henrik/vim-indexed-search'
Plug 'mattn/emmet-vim'

" Modern JavaScript+TypeScript Support
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax

" Autocomplete + TypeScript Server
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocomplete + TypeScript Server
"let g:coc_global_extensions = [ 'coc-tsserver' ]

" Colors
Plug 'altercation/vim-colors-solarized'

" Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }

call plug#end()

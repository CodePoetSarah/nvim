"automated installation of vimplug if not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.config/nvim/plugged')

" My Plugins
    Plug 'frazrepo/vim-rainbow'
    Plug 'mhinz/vim-startify'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-rg.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdcommenter'
    Plug 'preservim/tagbar'
    Plug 'tpope/vim-sleuth'
    Plug 'preservim/nerdtree'

" Themes
    Plug 'arcticicestudio/nord-vim'
    Plug 'marko-cerovac/material.nvim'

call plug#end()

" Theme
    filetype plugin indent on
    syntax on
    colorscheme nord
    let g:airline_theme='base16'
    let g:airline_powerline_fonts=1

" Quality of Life Changes
    set cursorline
    set mouse=a
    set colorcolumn=80
    set autoread

" Material Theme
" Styles: darker, lighter, oceanic, palenight, deep ocean
"    colorscheme material
"    let g:material_style = 'oceanic'

" Code Settings
   set number

" Keybinds
  nnoremap <C-n> :NERDTreeToggle<CR>
  nnoremap <C-t> :TagbarToggle<CR>
  nnoremap <C-f> :Telescope<CR>



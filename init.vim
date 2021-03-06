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
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/tagbar'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'folke/zen-mode.nvim'

" Themes
    Plug 'arcticicestudio/nord-vim'
    Plug 'marko-cerovac/material.nvim'

call plug#end()

" Startify settings
  let g:startify_session_dir = '~/.config/nvim/sessions/'
  let g:startify_files_number = 10
  let g:startify_lists = [
    \ { 'type': 'bookmarks',  'header': ['   Bookmarks'] },
    \ { 'type': 'dir',       'header': ['   Recent files'] },
    \ { 'type': 'sessions',  'header': ['   Saved sessions'] },
    \ ]
  let g:startify_custom_header = 'startify#pad(startify#fortune#boxed())' 
  let g:startify_custom_header = [ ' -------------------------[ Sarah Thornton ]-------------------------' ]
  let g:startify_custom_footer = [ ' -----------[ If it’s worth doing, it’s worth automating ]-----------' ]
  let g:startify_bookmarks = [{'s': '~/.local/src'}]

" Appearance
  filetype plugin indent on
  syntax on
  colorscheme nord

" Status Line
  let g:airline_powerline_fonts=1
  let g:airline_skip_empty_sections = 1
  let g:airline_detect_crypt=1
  let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
  let g:airline_section_c_only_filename = 1
  let g:airline#extensions#whitespace#enabled = 0
  let g:airline#extensions#wordcount#enabled = 1
  let g:airline#extensions#wordcount#filetypes = '\vnotes|help|markdown|rst|org|text|asciidoc|'
  let g:airline_section_z = '%l:%c'
  let g:airline#extensions#tabline#enabled = 1 
  let g:airline#extensions#tabline#fnamemod = ':t'

" Quality of Life Changes
  set cursorline
  set mouse=a
  " set colorcolumn=80
  set autoread

" Material Theme
" Styles: darker, lighter, oceanic, palenight, deep ocean
"    colorscheme material
"    let g:material_style = 'oceanic'

" Code Settings
  set number
  let g:coc_global_extensions = ['coc-json',
        \ 'coc-git',
        \ 'coc-pyright',
        \ 'coc-css',
        \ 'coc-cssmodules',
        \ 'coc-eslint',
        \ 'coc-sh',
        \ 'coc-tsserver',
        \ 'coc-sql',
        \ 'coc-html',
        \ 'coc-json',
        \ 'coc-markdownlint',
        \ 'coc-pydocstring',
        \ 'coc-swagger', 
        \ 'coc-yaml',
        \ 'coc-toml',
        \ 'coc-xml', 
        \ 'coc-pairs', 
        \ 'coc-explorer']

" Keybinds and Commands
  nnoremap <C-e> <Cmd>CocCommand explorer<CR> 
  nnoremap <C-t> :TagbarToggle<CR>
  nnoremap <C-f> :Telescope<CR>
  nnoremap <C-z> :ZenMode<CR>
  command! -nargs=0 Prettier :CocCommand prettier.formatFile

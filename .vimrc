" pecify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'elixir-editors/vim-elixir'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'https://github.com/tpope/vim-vinegar.git'
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Colorschemes
Plug 'https://github.com/rakr/vim-one.git'

" Custom Plugins
Plug 'ctrlpvim/ctrlp.vim'
" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Golang plugin
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Buffergator
Plug 'jeetsukumaran/vim-buffergator'

" Editor Config
Plug 'editorconfig/editorconfig-vim'

" powerline stuff
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
" Python Virtual Env Plugin
Plug 'https://github.com/jmcantrell/vim-virtualenv.git'

" Initialize plugin system
call plug#end()
set number
set mouse=a
syntax on
colorscheme onedark
set belloff=all
" Custom keys

map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>
"set clipboard=unnamedplus
let NERDTreeShowHidden=1

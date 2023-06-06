let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'
set t_Co=256
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
set background=dark

set viminfo='100,<1000
syntax sync minlines=10000
set backspace=indent,eol,start
set hlsearch

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

syntax enable
filetype plugin indent on
set background=dark
colorscheme solarized
set laststatus=2
set noshowmode
set wrap
set nofoldenable
let g:lightline = {'colorscheme': 'solarized'}

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_sh_checkers = ['shellcheck', "-e", "SC1090"]

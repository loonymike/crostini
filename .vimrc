set spelllang=en_us
set t_Co=256
set langmenu=en_US.UTF-8
set number

" set spell

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

func! WordProcessor()
  " movement changes
  map j gj
  map k gk
  " formatting text
  setlocal formatoptions=1
  setlocal noexpandtab
  setlocal wrap
  setlocal linebreak
  " spelling and thesaurus
  setlocal spell spelllang=en_us
  set thesaurus+=~/.vim/mthesaur.txt
  " complete+=s makes autocompletion search the thesaurus
  set complete+=s
endfu
com! WP call WordProcessor()

au BufEnter *.txt :WP

"xterm\\|rxvt"
    " use an orange cursor in insert mode
    let &t_SI = "\<Esc>]12;green\x7"
    " use a red cursor otherwise
    let &t_EI = "\<Esc>]12;yellow\x7"
    silent !echo -ne "\033]12;red\007"
    " reset cursor when vim exits
    autocmd VimLeave * silent !echo -ne "\033]112\007"

execute pathogen#infect()
syntax on
filetype plugin indent on

let g:airline_powerline_fonts = 1
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:airline_extensions = []

" let g:airline_theme='base16_google'
" let g:airline_theme='base16_classic'
" let g:airline_theme='base16_solarized'
" let g:airline_theme='powerlineish'
" let g:airline_theme='light'
" let g:airline_theme='molokai'
let g:airline_theme='base16_londontube'
" let g:airline_theme='vim-sensible'

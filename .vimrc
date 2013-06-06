fixdel
set nocompatible
set number
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
set fileformats=unix
set splitbelow
set splitright
syntax on
filetype plugin indent on

call pathogen#infect()

runtime! macros/matchit.vim

augroup myfiletypes

  autocmd!

  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

map <F2> :NERDTreeToggle<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

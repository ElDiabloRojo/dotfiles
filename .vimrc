execute pathogen#infect()
syntax on
filetype plugin indent on

let g:NERDTreeDirArrows=0
let NERDTreeShowHidden=1

autocmd! VimEnter * NERDTree | wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nmap <F6> :NERDTreeToggle<CR>

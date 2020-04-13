call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()
set termguicolors
colorscheme dracula
set mouse=a

"JEDI
"""disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

"""open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

"DEOPLETE
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif | set splitbelow
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"AIRLINE
let g:airline_theme='dracula' " <theme> is a valid theme name
"""Enable tab line
let g:airline#extensions#tabline#enabled = 1
"""Enable powerfonts giving angled tables
let g:airline_powerline_fonts = 1

"NEOFORMAT
"""Enable alignment
let g:neoformat_basic_format_align = 1

"""Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

"""Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

"NERDTREE
nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 20
let NERDTreeShowHidden=1
augroup nerdtree_open
    autocmd!
    autocmd VimEnter * NERDTree | wincmd p
    autocmd! VimEnter * NERDTree | wincmd w
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END

"PYLINT
let g:neomake_python_enabled_makers = ['pylint']
let g:neomake_python_pylint_args = ['--output-format=colorized']

"NEOMAKE
call neomake#configure#automake('nrwi', 500)

"HIGHLIGHTEDYANK
hi HighlightedyankRegion cterm=reverse gui=reverse
"""set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

" Basic
syntax enable
filetype plugin indent on
" Highlight search results
set hlsearch
" New tab
map tt :tabnew<CR>
" Allow backspace over indent
:set backspace=indent,eol,start
" Automatic close brackets
inoremap (<CR> (<CR>)<ESC>O
inoremap {<CR> {<CR>}<ESC>O
" Resize horzontal split window
nmap <C-k> <C-W>-<C-W>-
nmap <C-j> <C-W>+<C-W>+
" Resize vertical split window
nmap <C-l> <C-W>><C-W>>
nmap <C-h> <C-W><<C-W><
" Remove vertical lines on window division
set fillchars=vert:\ 
" Tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4


" NERDTree
" Open navigation on F3
map <F3> :NERDTreeToggle<CR>
" Show hidden files
let NERDTreeShowHidden=1
" Autorefresh on tree focus
function! NERDTreeRefresh()
    if &filetype == "nerdtree"
        silent exe substitute(mapcheck("R"), "<CR>", "", "")
    endif
endfunction
autocmd BufEnter * call NERDTreeRefresh()


" NERDComment
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1


" Pathogen for syntax
execute pathogen#infect()


" YouCompleteMe
" Use homebrew's clangd
let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'
" Inlay hints
let g:ycm_enable_inlay_hints = 1
" Go to
nnoremap <leader>dd :YcmCompleter GoTo<CR>
" Remove preview window
set completeopt-=preview

" Window Chooser
" Mapping
nmap - <Plug>(choosewin)
" Show big letters
let g:choosewin_overlay_enable = 1


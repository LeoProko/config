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
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
" Resize horzontal split window
nmap <C-k> <C-W>-<C-W>-
nmap <C-j> <C-W>+<C-W>+
" Resize vertical split window
nmap <C-l> <C-W>><C-W>>
nmap <C-h> <C-W><<C-W><


" NERDTree
" Open navigation on F3
map <F3> :NERDTreeToggle<CR>


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
nnoremap <leader>dd :YcmCompleter GoTo<CR>

" Window Chooser
" Mapping
nmap - <Plug>(choosewin)
" Show big letters
let g:choosewin_overlay_enable = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
set completeopt-=preview


" Rust
" Format on save
let g:rustfmt_autosave = 1


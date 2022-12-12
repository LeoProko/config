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
" Move lines
nnoremap <S-j> :m+<CR>==
nnoremap <S-k> :m-2<CR>==
vnoremap <S-j> :m'>+<CR>gv=gv
vnoremap <S-k> :m-2<CR>gv=gv
" Line number at the bottom of screen
set ruler

" Backup, swap and undos storage
set directory=~/.vim/dirs/tmp     " directory to place swap files in
set backup                        " make backup files
set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo
" create needed directories if they don't exist
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
    call mkdir(&directory, "p")
endif
if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif


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
" Inlay hints
let g:ycm_enable_inlay_hints = 1
" Go to
nnoremap <leader>dd :aboveleft YcmCompleter GoTo<CR>
nnoremap <leader>sd :rightbelow vertical YcmCompleter GoTo<CR>
nnoremap <leader>td :tab YcmCompleter GoTo<CR>
" Refactor rename
nnoremap <leader>rr :YcmCompleter RefactorRename 
" Remove preview window
set completeopt-=preview

" Window Chooser
" Mapping
nmap - <Plug>(choosewin)
" Show big letters
let g:choosewin_overlay_enable = 1


" Clang format
function! MakeClangFormat()
  if &modified && !empty(findfile('.clang-format', expand('%:p:h') . ';'))
    let cursor_pos = getpos('.')
    :silent %!clang-format
    call setpos('.', cursor_pos)
  endif
endfunction

autocmd BufWritePre *.h,*.hpp,*.c,*.cpp, :call MakeClangFormat()


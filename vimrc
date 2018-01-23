language en_US
" Leader - ( Spacebar )
let mapleader="\<SPACE>"

" Load up all of our plugins
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

"Use enter to create new lines w/o entering insert mode
nnoremap <CR> o<Esc>
"Below is to fix issues with the ABOVE mappings in quickfix window
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>

" Space Space to open previously opened file buffer
nmap <Leader><Leader> <c-^>
" Next / Previous Buffer (Tab)
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR><Paste>

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>
" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"Use enter to create new lines w/o entering insert mode
nnoremap <CR> o<Esc>
"Below is to fix issues with the ABOVE mappings in quickfix window
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>

"Toggle relative numbering, and set to absolute on loss of focus or insert mode
set rnu
function! ToggleNumbersOn()
    set nu!
    set rnu
endfunction
function! ToggleRelativeOn()
    set rnu!
    set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()

" Set standard file encoding
set encoding=utf8
" No special per file vim override configs
set nomodeline
" Stop word wrapping
set nowrap
  " Except... on Markdown. That's good stuff.
  autocmd FileType markdown setlocal wrap
" Adjust system undo levels
set undolevels=100
"  Proper PEP8 indentation
au BufNewFile,BufRead *.py,*.cpp,*.hpp,*.h,*.c
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
" Draw line a 80th column
set colorcolumn=80
" Set tab width and convert tabs to spaces
au BufNewFile,BufRead *.js,*.html,*.css,*.sh
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab
" Don't let Vim hide characters or make loud dings
set conceallevel=1
set noerrorbells
" Number gutter
set number
" Use search highlighting
set hlsearch
" Space above/beside cursor from screen edges
set scrolloff=1
set sidescrolloff=5

set mouse=r
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

set splitbelow
set splitright

if system('uname -s') == "Darwin\n"
  "OSX
  set clipboard=unnamed 
else
  "Linux
  set clipboard=unnamedplus
endif

"set clipboard=unnamed
syntax on
set t_Co=256

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
call plug#end()

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

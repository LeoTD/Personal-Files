"
"
" This is the main configuration file for Vim preferences.
" File type specific customizations are stored in:
" 
" ~/.vim/after/ftplugin/(filetype).vim
"

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"Plug 'vim-syntastic/syntastic'
Plug 'itchyny/lightline.vim'
call plug#end()

" -------------------- Standard Vim config

runtime! ftplugin/man.vim

" Syntax & Colors!
syn on
colorscheme delek

" Show partial commands in the last line of the screen
set showcmd

" Better command-line completion
set wildmenu

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell
set t_vb=

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Toggles
map <F6> :set relativenumber!<CR>
map <F5> :set list!<CR>
set pastetoggle=<F4>
map <F12> :cd %:p:h<CR>

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Enable use of the mouse for all modes
" set mouse=a (DISABLED DUE TO BUG WITH SCROLLING)

" -------------------- Lightline config

	let g:lightline = {
		\ 'colorscheme': 'Dracula',
		\ }

" -------------------- Syntastic config

"    let g:syntastic_always_populate_loc_list = 1
"    let g:syntastic_auto_loc_list = 1
"    let g:syntastic_check_on_open = 0
"    let g:syntastic_check_on_wq = 0
"	let g:syntastic_enable_signs = 0
"    highlight SyntasticErrorSign guifg=white guibg=red

"map <F7> :SyntasticCheck<CR>
"map <F8> :Errors<CR>
"map <F9> :lclose<CR>



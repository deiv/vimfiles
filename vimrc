

""" pathogen setup
filetype off
execute pathogen#infect()
"""call pathogen#runtime_append_all_bundles()

""" enable filetype plugin
filetype plugin on
filetype indent on

""" disable vi compatibility
set nocompatible

""" security exploit
set modelines=0

""" tab expands to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

""" some cutomizations
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
""" store undo file
""" set undofile

""" set <leader> key
let mapleader = ","

""" change regex handling ala perl
nnoremap / /\v
vnoremap / /\v

""" all-lowercase search -> case-insensitive
""" at least one character is uppercase -> case-sensitive
set ignorecase
set smartcase

"set gdefault

""" highlight search results
set incsearch
set showmatch
set hlsearch

""" clear search by ,<space>
nnoremap <leader><space> :noh<cr>

""" make <tab> key match brackets
nnoremap <tab> %
vnoremap <tab> %

""" line wrap settings
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85


""" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

""" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59


"""
""" Keys mapping
"""

""" disable some shorcuts
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

""" save after losing focus
"au FocusLost * :wa

""" trim all trailing space
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

""" new vertical split and focus on it
nnoremap <leader>w <C-w>v<C-w>l

""" new horizontal split and focus on it
nnoremap <leader>e <Esc>:split<CR><C-w>l

""" close current split
nnoremap <leader>q <Esc>:close<CR>

""" new tab and focus on it
nnoremap <leader>t <Esc>:tabnew<CR>

""" close current tab
nnoremap <leader>y <Esc>:tabclose<CR>

""" move around split
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

""" move around split
nnoremap <C-left> <C-w>h
nnoremap <C-down> <C-w>j
nnoremap <C-up> <C-w>k
nnoremap <C-right> <C-w>l

""" move around tabs
nnoremap <S-n> <Esc>:tabp<CR>
nnoremap <S-m> <Esc>:tabn<CR>

""" move around tabs
nnoremap <S-left> <Esc>:tabp<CR>
nnoremap <S-right> <Esc>:tabn<CR>

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<CR>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%


"""
""" Plugin configuration
"""

""" Taglist plugin
let Tlist_Exit_OnlyWindow = 1     	        " exit if taglist is last window open
let Tlist_Show_One_File = 1       	        " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  	        " no fold column (only showing one file)
let tlist_sql_settings = 'sql;P:package;t:table'
let Tlist_Use_Right_Window = 1
let g:ctags_statusline=1 			        " display function name in status bar


""" CSS support on taglist  (neeed patched exuberant-ctags)
au BufRead,BufNewFile *.scss set ft=scss.css " add css files to taglist


""" NerdTree plugin
nnoremap <F2> <Esc>:NERDTreeToggle<CR>


""" Taglist plugin
inoremap <F4> <Esc>:TlistToggle<CR>
nnoremap <F4> <Esc>:TlistToggle<CR>
vnoremap <F4> <Esc>:TlistToggle<CR>


""" Buffer explorer plugin
nnoremap <F3> <Esc>:BufExplorer<CR>


""" Sparkup html generator plugin
let g:sparkupExecuteMapping = '<C-h>'


""" CtrlP
map <F5> <Esc>:CtrlP<CR>
map <F6> <Esc>:CtrlP %%<CR>


""" dbext connection params
nnoremap <C-e> <Esc>:DBExecSQLUnderCursor<CR>
let g:dbext_default_profile_mysql_local_DBI = 'type=DBI:user=root:passwd=:driver=mysql:conn_parms=host=localhost'
"""let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root'
"""let g:dbext_default_profile_SA_db3  = 'type=ODBC:user=DBA:passwd=SQL:dsnname=myodbc'


"""
""" Visuals
"""

syntax on
colorscheme github
"set background=light
"set background=dark

set statusline=%<%t%h%m%r\ \ %a\ %{strftime(\"%c\")}%=0x%B\\\ line:%l,\ \ col:%c%V\ %P

"if has("statusline")
"  set laststatus=2 " always show the status bar

" Start the status line
"  set statusline=%f\ %m\ %r

" Add fugitive
"  set statusline+=%{fugitive#statusline()}

" Finish the statusline
"  set statusline+=Line:%l/%L[%p%%]
"  set statusline+=Col:%v
"  set statusline+=Buf:#%n
"  set statusline+=[%b][0x%B]
"endif

set gfn=Inconsolata\ Medium\ 11

" Arduino color sintax
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

"" tmuxify
let g:tmuxify_pane_split = '-h'
let g:tmuxify_pane_size = '80'
let g:tmuxify_run = {
    \ 'sh': 'bash %',
    \ 'go': 'go build %',
    \ 'rb': 'ruby %'
    \}


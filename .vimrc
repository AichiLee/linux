" ~/.vimrc
" Yang Li <leeyoung@iastate.edu>, Feb. 20, 2013
" modified based on http://www.linode.com/wiki/index.php/Vim_Tutorial#.vimrc_configuration_file

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" encoding 
set enc=utf-8

" no spell check
set nospell

" get out of horrible vi-compatible mode
" set nocompatible

" detect the type of file
filetype on

" how many lines of history to remember
set history=1000

" ask what to do about unsaved/read-only files
set confirm

" share clipboard with windows clipboard
set clipboard=unnamedplus

" automatically detected values for fileformat in this order
" set fileformats= unix,dos,mac

" load filetype plugins
filetype plugin on

" load indent files for specific filetypes
filetype indent on

" save global variables that consists of upper case letters
"set viminfo+=!

" none of these should be word dividers, so make them not be
"set iskeyword+=_,$,@,%,#,-

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" we are using a dark background
set background=dark

" syntax highlighting on
syntax on

" Load color scheme from ~/.vim/colors
" http://www.vim.org/scripts/script.php?script_id=985
"colorscheme metacosm

" tweak highlighting colors
highlight comment ctermfg=DarkGray guifg=DarkGray

" tweak selection highlighting colors: darker gray
highlight visual ctermfg=255 guifg=#eeeeee

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files/Backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" make backup file
set backup

" where to put backup file (don't forget to make a backup directory)
set backupdir=./.backup,~/.backup,.,/tmp

" directory is the directory for temp file
set directory=.,~/tmp,/var/tmp,/tmp

" Name of the errorfile for the :make command
set makeef=make.err

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" number of pixel lines inserted between characters
set linespace=0

" command-line completion operates in an enhanced mode
set wildmenu

" Show the line and column number of the cursor position
set ruler

" Number of screen lines to use for the command-line
set cmdheight=1

" show partial commands in status line and selected char/lines
set showcmd

" Print the line number in front of each line
set number

" do not redraw while running macros (much faster) (LazyRedraw)
set lazyredraw

" improve redrawing esp. when for scroll 
set ttyfast

" buffer becomes hidden when it is abandoned
set hidden

" make backspace work normal (indent, eol, start)
set backspace=2

" allow backspace and cursor keys to cross line boundaries
set whichwrap+=<,>,h,l

" enable mouse support
set mousemodel=extend
set selectmode=mouse
set mousefocus

" use mouse everywhere
set mouse=a

" shortens messages to avoid 'press a key' prompt
"set shortmess=atI

" tell us when any line is changed via : commands
set report=0

" don't make noise on error messages
"set noerrorbells

" make the splitters between windows be blank
"set fillchars=vert:\ ,stl:\ ,stlnc:\


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" show matching brackets for a moment
set showmatch

" how many tenths of a second to blink matching brackets for
set matchtime=5

" do highlight searched phrases
set hlsearch

" but do highlight as you type you search phrase
set incsearch

" case insensitive search
set ignorecase

" case sensitive when uc present
set smartcase

" highlight current line
set cursorline

" what to show when I hit :set list
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$

" 30 lines tall
"set lines=30

" 100 cols wide
"set columns=100

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=3

" don't blink
"set novisualbell

" When nonempty, this option determines the content of the status line
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
if has('statusline')
" always show the status line
	set laststatus=2
	set statusline=%<%f	" filename
	set statusline+=%w%h%m%r	"options
	set statusline+=\ <%{&ff}/%Y> "file type
	set statusline+=\ [%{getcwd()}] "current dir
	set statusline+=%=%-14.(%l,%c%V%)\ %p%% "on the right, file nav info
endif

" display current file directory and name by pressing <F5>
map <F5> :echo expand("%:p")<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" how automatic formatting is to be done
"set formatoptions=tcrqn

" take indent for new line from previous line
set autoindent

" smart autoindenting for C programs
set smartindent

" do c-style indenting
set cindent

" tab spacing (settings below are just to unify it)
set tabstop=4

" unify
set softtabstop=4

" unify
set shiftwidth=4

" real tabs please!
set noexpandtab

" do not wrap lines
"set nowrap

" use tabs at the start of a line, spaces elsewhere
"set smarttab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
" Enable folding, but by default make it act like folding is off, because
" folding is annoying in anything but a few rare cases
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn off folding by default
set nofoldenable

" Make folding indent sensitive/syntax sensitive
set foldmethod=indent

" Don't autofold anything (but I can still fold manually)
set foldlevel=100

" don't open folds when you search into them
"set foldopen-=search

" don't open folds when you undo stuff
set foldopen-=undo

" maximum nest level for folding
set foldnestmax=10

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File Explorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" should I split vertically
"let g:explVertical=1

" width of 35 pixels
"let g:explWinSize=35

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Win Manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" How wide should it be( pixels)
"let g:winManagerWidth=35

" What windows should it
"let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" If you don't have it download it from http://ctags.sourceforge.net/
" To get taglists download it from http://www.geocities.com/yegappan/taglist

" Location of ctags
"let Tlist_Ctags_Cmd = '/bin/ctags'

" order by
"let Tlist_Sort_Type = "name"

" split to the right side of the screen
"let Tlist_Use_Right_Window = 1

" show small meny
"let Tlist_Compart_Format = 1

" if you are the last, kill yourself
"let Tlist_Exist_OnlyWindow = 1

" Do not close tags for other files
"let Tlist_File_Fold_Auto_Close = 0

" Do not show folding tree
"let Tlist_Enable_Fold_Column = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FORTRAN
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" fortran free source style (should be used before syntax on "
let fortran_free_source=1

" use tabs in fortran
let fortran_have_tabs=1  

" fortran folding
let fortran_fold=1
let fortran_fold_conditionals=1
let fortran_fold_multilinecomments=1

" more precise folding but slow
"let fortran_more_precise=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" right arrow (normal mode) switches buffers  (excluding minibuf)
" map <right> <ESC>:MBEbn<RETURN>

" left arrow (normal mode) switches buffers (excluding minibuf)
" map <left> <ESC>:MBEbp<RETURN>

" up arrow (normal mode) brings up a file list
"map <up> <ESC>:Sex<RETURN><ESC><C-W><C-W>

" down arrow  (normal mode) brings up the tag list
"map <down> <ESC>:Tlist<RETURN>

" alt-i (normal mode) inserts a single char, and then switches back to normal
" map <A-i> i <ESC>r

" map <F2> <ESC>ggVG:call SuperRetab()<left>

" encypt the file (toggle)
" map <F12> ggVGg?

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ensure every file does syntax highlighting (full)
" autocmd BufEnter * :syntax sync fromstart

" all my .asp files ARE jscript
" au BufNewFile,BufRead *.asp :set ft=aspjscript

" all my .tpl files ARE html
" au BufNewFile,BufRead *.tpl :set ft=html

" all my .tpl files ARE html
" au BufNewFile,BufRead *.hta :set ft=html

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" iab xasp <%@language=jscript%><CR><%<CR><TAB><CR><BS>%><ESC><<O<TAB>
" iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" other
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ignore case sensitivity on search patterns
" set ignorecase

" show chars on end of line, white spaces, tabs, etc
" set list

" having it auto maximize the screen is annoying
" autocmd GUIEnter * :simalt ~x

" switch to current dir (breaks some scripts)
" autocmd BufEnter * :lcd %:p:h


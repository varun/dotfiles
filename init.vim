call plug#begin()

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'joshdick/onedark.vim'
Plug 'brooth/far.vim'
Plug 'carlitux/deoplete-ternjs'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'tweekmonster/django-plus.vim'
Plug 'tweekmonster/braceless.vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'davidhalter/jedi-vim'
Plug 'tell-k/vim-autopep8'
Plug 'w0rp/ale'
Plug 'stephpy/vim-yaml'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/emacs.vim'
Plug 'tpope/vim-unimpaired'
Plug 'samsonw/vim-task'
" Plug 'rking/ag.vim'
Plug 'Shougo/neomru.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'kana/vim-operator-user'
Plug 'rhysd/vim-operator-surround'
Plug 'michalbachowski/vim-wombat256mod'
Plug 'jmcantrell/vim-virtualenv'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'tpope/vim-commentary'
Plug 'mattn/gist-vim'
Plug 'tpope/vim-repeat'
Plug 'Raimondi/delimitMate'
Plug 'plasticboy/vim-markdown'
Plug 'ervandew/supertab'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'kien/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'
" Plug 'vim-erlang/vim-erlang-omnicomplete', { 'for': 'erlang' }
" Plug 'vim-erlang/vim-erlang-compiler'
" Plug 'vim-erlang/vim-erlang-runtime'
" Plug 'vim-erlang/vim-erlang-tags'
" Plug 'edkolev/erlang-motions.vim'
" Plug 'fishcakez/vim-rebar'
" Plug 'fishcakez/rebar_vim_plugin'
Plug 'thinca/vim-ref'
Plug 'sjl/vitality.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'mbbill/undotree'

call plug#end()

let g:deoplete#enable_at_startup = 1
filetype plugin indent on
let mapleader = "\<Space>"             "Map leader to space bar
" nnoremap <CR> G                        "Enter to goto end of the file
set ruler
set splitright " Newly opened files going to be opened on right side of the vertical pane
set cursorline
set relativenumber number
set showmatch
set noshowmode
" set laststatus=2
set autoread
syntax on
set wrap                                "Wrap lines
set undolevels=1000                     "Number of undo levels
set listchars=tab:▸\                    "Show tabs with ▸ symbol
set list
" set encoding=utf-8
set wildmenu
set wildmode=longest:full,list:full
set lazyredraw                  " Will not redraw the screen while running macros (goes faster))"
set viminfo="NONE"                      "Disables the creation of .viminfo file"
set termguicolors
" Use the repeat operator with a visual selection
" " This is useful for performing an edit on a single line, then highlighting
" a
" " visual block on a number of lines to repeat the edit.
vnoremap <leader>. :normal .<cr>


"Air Line settings
"=================================

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Unicode symbols
" ================================
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline_theme='onedark'

"Deoplete config
"=================================
let g:deoplete#enable_refresh_always = 1

if !exists('g:deoplete#omni_patterns')
  let g:deoplete#omni_patterns = {}
end

" let g:deoplete#omni_patterns.erlang = [
"       \ '[^. *\t]:\w*',
"       \ '^\s*-\w*'
" \ ]

"Find and Replace settings
"=================================
let g:far#source = 'agnvim'



"Deoplete TernJS
"=================================
"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'js'
                \ ]
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#case_insensitive = 1
let g:deoplete#sources#ternjs#guess = 0
let g:deoplete#sources#ternjs#include_keywords = 1


"JSX settings
"=================================
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

"Expand-region settings
"=================================
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


"Ale Configurations
"=================================

"Vim Notes Config
"=================================
let g:notes_directories = ['~/notes/']

"Surround mappings
"=================================
map <silent>sa <Plug>(operator-surround-append)
map <silent>sd <Plug>(operator-surround-delete)
map <silent>sr <Plug>(operator-surround-replace)

"Neovim python settings
"=================================
let python_highlight_all = 1
" let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:jedi#force_py_version = 3
let g:jedi#completions_enabled = 0
let g:deoplete#sources#jedi#python_path = '/usr/local/bin/python3'
autocmd! BufWinEnter '__doc__' setlocal bufhidden=delete
autocmd! FileType python setlocal completeopt-=preview
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>a"
let g:jedi#goto_definitions_command = "<leader>g"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"

" TODO
" =================================
" let g:neomake_python_enabled_makers = ['flake8', 'pep8']
" " E501 is line length of 80 characters
" let g:neomake_python_flake8_maker = { 'args': ['--ignore=E501'], }
" let g:neomake_python_pep8_maker = { 'args': ['--max-line-length=105'], }

" Status Line
" ===============================
let statusline=2

"Better backspace
"==================================
set backspace=indent,eol,start

"Vim Task
"==================================
noremap <silent> <leader>cc :call Toggle_task_status()<CR>

"Switch between recent buffers
"==================================
nnoremap <leader>re <C-^>

"CtrlP settings
"==================================
let g:ctrlp_match_window = 'top,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|__pycache__)$'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<leader>o'
let g:ctrlp_use_caching = 0
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

"No backup
"==================================
set nowb
set nobackup
set noswapfile

"Search settings
"==================================
set smartcase   " Enable smart-case search
set ignorecase
set incsearch
set hlsearch

"Colorscheme settings
"==================================
" colorscheme Tomorrow-Night-Eighties
" set background=light
set background=dark
" colorscheme Tomorrow
colorscheme onedark
" colorscheme emacs
" colorscheme solarized
" colorscheme wombat256mod

"Window management settings
"==================================
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

"Leader key mappings
"==================================
noremap <Leader>h :nohl<CR>                     " Deselect the search highlights
nnoremap <leader>ev :tabedit ~/.config/nvim/init.vim<cr>       " Open init.vim file in a separate tab

"Save and ESC settings
"==================================
inoremap jk <Esc>
inoremap ;d <Esc>:update<Cr>
inoremap ;f <C-O>:update<Cr>
nnoremap ;f :update<CR>
nnoremap ;q :wq<CR>

"Supertab and Tab settings
"==================================
set expandtab
set smarttab
let g:SuperTabCrMapping = 0
let g:SuperTabDefaultCompletionType = '<C-n>'

"Ultisnips settings
"==================================
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "vim-snippets/UltiSnips"]



" Scrolling
" " =========
" Start scrolling when we're getting close to margins
set scrolloff=5
set sidescrolloff=15
set sidescroll=1

"Function to remove trailing white space
"==================================
fun! <SID>StripTrailingWhitespaces()
        let l = line(".")
        let c = col(".")
        %s/\s\+$//e
        call cursor(l, c)
endfun


"Auto command settings
"==================================
augroup tasks
        autocmd!
        autocmd BufNewFile,BufRead todo.txt,*.task,*.tasks  setfiletype task
augroup END

augroup pythonjavascript
        autocmd!
        autocmd BufWritePre *.html,*.task,*.py,*.js,notes :call <SID>StripTrailingWhitespaces()
augroup END

augroup markdown
        autocmd!
        autocmd BufNewFile,BufReadPost *.md set filetype=markdown
augroup END

augroup autosourcing
        autocmd!
        autocmd bufwritepost init.vim source $MYVIMRC
augroup END

augroup fileconfigs
        autocmd!
        autocmd FileType erlang setl sw=2 sts=2 et
        autocmd FileType task setl sw=2 sts=2 et
        autocmd FileType html,htmldjango setl sw=4 sts=4 et
augroup END

"NERDTree Settings
"==================================
let NERDTreeIgnore=['.pyc$','\.vim$', '\~$','.iml$','\.idea$','__pycache__$[[dir]]', 'node_modules$[[dir]]', '.beam$']
nnoremap <leader>ne :NERDTreeToggle<CR>

" Better Indentation
"==================================
set ai "Auto indent
set si "Smart indent
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

"Disable arrow keys
"==================================
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"Prevent replacing paste buffer on paste:
"=================================
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

"Cursor shape
"==============================
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"System ClipBoard copy paste
"==============================
set clipboard=unnamed
nnoremap <leader>p "+p
vnoremap <leader>y "+y

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'jiangmiao/auto-pairs'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
" text object
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'coderifous/textobj-word-column.vim'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
Plug 'sgur/vim-textobj-parameter'

" fold
Plug 'pseewald/vim-anyfold'

" color
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" LeaderF open file
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" echodoc
Plug 'Shougo/echodoc.vim'

" complete
Plug 'zxqfl/tabnine-vim'

" format
Plug 'rhysd/vim-clang-format'

" class outline viewer
Plug 'majutsushi/tagbar'

" comment
Plug 'scrooloose/nerdcommenter'

" This plugin provides a start screen for Vim and Neovim.
Plug 'mhinz/vim-startify'

" high light
Plug 'lfv89/vim-interestingwords'

" Initialize plugin system
call plug#end()

let mapleader=','
" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on

" search
set incsearch
" set highlight 	" conflict with highlight current line
set hlsearch
set ignorecase
set smartcase
" set cursorcolumn


" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=7                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
" set relativenumber

" Default Indentation
set autoindent
set smartindent        " indent when
set tabstop=2          " tab width
set softtabstop=2      " backspace
set shiftwidth=2       " indent width
set textwidth=79
set smarttab
set expandtab          " expand tab to space
" set foldmethod=indent   " set default foldmethod

" color vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

" echodoc
set cmdheight=2

" color
syntax enable
set background=dark
colorscheme solarized

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif


" vim-anyfold
autocmd Filetype * AnyFoldActivate
let g:anyfold_fold_comments=1
set foldlevel=0
hi Folded term=underline
autocmd Filetype cpp set foldignore=#/

" nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" 避免必须保存修改才可以跳转buffer
set hidden

" buffer快速导航
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>

" 查看buffers
nnoremap <Leader>l :ls<CR>

"" 通过索引快速跳转
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>

set pastetoggle=<F12>

" 移除行末尾空格
au BufWritePre * call Removetrailingspace()
function! Removetrailingspace()
  if $vim_hate_space_errors != '0' &&
        \(&filetype == 'c' || &filetype == 'cpp' || &filetype == 'h' ||
        \&filetype == 'vim' || &filetype == 'sh' || &filetype == 'python')
    normal m`
    silent! :%s/\s\+$//e
    normal ``
  endif
endfunction

" tagbar
" nmap <F8> :TagbarToggle<CR>
nmap <C-T> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_width = 80

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" clang-format
let g:clang_format#auto_format_on_insert_leave=1

" setting airline
let g:airline#extensions#tabline#enabled = 1   " 是否打开tabline
" 这个是安装字体后 必须设置此项
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum' "选择主题
let g:airline#extensions#tabline#enabled = 1    "Smarter tab line:
" 显示窗口tab和buffer
let g:airline#extensions#tabline#left_sep = ' '  "separater
let g:airline#extensions#tabline#left_alt_sep = '|'  "separater
let g:airline#extensions#tabline#formatter = 'default'  "formater
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_left_alt_sep = '❯'
let g:airline_right_alt_sep = '❮'"

" clang-format : pip install clang, download 
let g:clang_format#auto_format_on_insert_leave=1
" Clang-format
map <C-K> :py3f ~/.vim/plugin/clang-format.py<cr>
imap <C-K><c-o>:py3f ~/.vim/plugin/clang-format.py<cr>
function FormatBuffer()
  if &modified && !empty(findfile('.clang-format', expand('%:p:h') . ';'))
    let cursor_pos = getpos('.')
    :%!clang-format
    call setpos('.', cursor_pos)
  endif
endfunction
autocmd BufWritePre .h,.hpp,.c,.cpp,*.cc :call FormatBuffer()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yapf-format pip install yapf
map <C-Y> :call yapf#YAPF()<cr>
imap <C-Y> <c-o>:call yapf#YAPF()<cr>
function FormatBufferYAPF()
  let cursor_pos = getpos('.')
  :%!yapf
  call setpos('.', cursor_pos)
endfunction
"autocmd BUfWritePre *.py :call FormatBufferYAPF()
map <C-Y> :call FormatBufferYAPF()<cr>

" vim-interestingwords
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']

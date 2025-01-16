配置一台新机器的时候, 需要配置下面的环境, 以方便顺利进行开发
apt install 
sudo apt install tmux gcc g++
Conda install & pip install
conda install -c conda-forge libstdcxx-ng
conda install lld ccache

pip uninstall triton


pip install --user jinja2 pytest pytest-timeout pytest-xdist ninja2
pip install torch==2.4 scipy numpy pytest lit pandas matplotlib
~/.ssh/authorized_keys
mkdir ~/.ssh

Git add key
ssh-keygen -t rsa -b 4096 -C "yxfky"
cat .ssh/id_rsa.pub
~/.gitconfig
~/.gitconfig
[alias]
    co = checkout
    ci = commit
    br = branch
    st = status
    lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset

.pip/pip.conf
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host = https://pypi.tuna.tsinghua.edu.cn

oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
Anaconda
conda create -n siorigin_triton_test python=3.10
conda activate siorigin_triton_test
Clone 代码
git clone git@gitlabsoft.siorigin.com:SiCompiler/siorigin_triton.git
~/.vimrc
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
"
" if empty(glob('~/.vim/autoload/plug.vim'))
"   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"         \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

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
" Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'lifepillar/vim-solarized8'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" LeaderF open file
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" echodoc
Plug 'Shougo/echodoc.vim'

" complete
" Plug 'zxqfl/tabnine-vim'
" Use release branch (recommended)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" format
Plug 'rhysd/vim-clang-format'

" class outline viewer
Plug 'majutsushi/tagbar'

" comment
Plug 'preservim/nerdcommenter'

" This plugin provides a start screen for Vim
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
" set highlight   " conflict with highlight current line
set hlsearch
set ignorecase
set smartcase
set cursorcolumn

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
" colorscheme gruvbox
colorscheme molokai
colorscheme onedark

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
autocmd Filetype py set foldignore=#/

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

" " 移除行末尾空格
" au BufWritePre * call Removetrailingspace()
" function! Removetrailingspace()
"   if $vim_hate_space_errors != '0' &&
"         \(&filetype == 'c' || &filetype == 'cpp' || &filetype == 'h' ||
"         \&filetype == 'vim' || &filetype == 'sh' || &filetype == 'python')
"     normal m`
"     silent! :%s/\s\+$//e
"     normal ``
"   endif
" endfunction

" tagbar
" nmap <F8> :TagbarToggle<CR>
nmap <C-T> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_width = 80

" config nerdcomment start
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_python = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
" config nerdcomment end

" clang-format
let g:clang_format#auto_format_on_insert_leave=1

" setting airline
let g:airline#extensions#tabline#enabled = 1   " 是否打开tabline

" 这个是安装字体后 必须设置此项
let g:airline_powerline_fonts = 1
" let g:airline_theme='bubblegum' "选择主题
let g:airline_theme='molokai' "选择主题
" let g:airline_theme='murmur' "é择主题
" let g:airline_theme='solarized'
" let g:airline_solarized_bg='dark'
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
" map <C-Y> :call yapf#YAPF()<cr>
" imap <C-Y> <c-o>:call yapf#YAPF()<cr>
function FormatBufferYAPF()
  let cursor_pos = getpos('.')
  :%!yapf --style='{based_on_style: google, column_limit: 100, indent_width: 4}'
  call setpos('.', cursor_pos)
endfunction
autocmd BUfWritePre *.py :call FormatBufferYAPF()
map <C-Y> :call FormatBufferYAPF()<cr>

" vim-interestingwords randomise and configure your own colors
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']

set makeprg=pylint\ --reports=n\ --output-format=parseable\ ~/pylintrc
set errorformat=%f:%l:\ %m

~/.tmux.conf
#-- base settings -- #
set -g default-terminal "xterm-256color"
set -g display-time 3000
set -g escape-time 0
set -g history-limit 65535
set -g base-index 1
set -g pane-base-index 1

# reload config (prefix r)
bind r source ~/.tmux.conf \; display "Configuration reloaded!"

#-- statusbar --#
set -g status-utf8 on
set -g status-interval 1
set -g status-keys vi

setw -g mode-keys vi
# navigate pane using vi key
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# modes
setw -g clock-mode-colour colour223
setw -g mode-attr bold
setw -g mode-fg colour223
setw -g mode-bg colour235
 
# panes
set -g pane-border-bg colour234
set -g pane-border-fg colour234
set -g pane-active-border-bg colour232
set -g pane-active-border-fg colour232

# Mouse mode
set-option -g mouse on 
set -g mode-mouse on
set -g mouse-resize-pane on
set -g mouse-select-pane on
set -g mouse-select-window on

# #########################################
# 开启鼠标模式
set -g mouse on

# 如果对 vim 比较熟悉，可以将 copy mode 的快捷键换成 vi 模式
set-window-option -g mode-keys vi

# -----------------------------------------------------------------------------
# 使用插件 - via tpm
#   1. 执行 git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#   2. 执行 bash ~/.tmux/plugins/tpm/bin/install_plugins
#
# -----------------------------------------------------------------------------
setenv -g TMUX_PLUGIN_MANAGER_PATH '~/.tmux/plugins'

# 推荐的插件（请去每个插件的仓库下读一读使用教程）
set -g @plugin 'seebi/tmux-colors-solarized'
set -g @plugin 'tmux-plugins/tmux-pain-control'
set -g @plugin 'tmux-plugins/tmux-prefix-highlight'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'tmux-plugins/tpm'

# tmux-resurrect
set -g @resurrect-dir '~/.tmux/resurrect'

# tmux-prefix-highlight
set -g status-right '#{prefix_highlight} #H | %a %Y-%m-%d %H:%M'
set -g @prefix_highlight_show_copy_mode 'on'
set -g @prefix_highlight_copy_mode_attr 'fg=white,bg=blue'

# 初始化 TPM 插件管理器 (放在配置文件的最后)
run '~/.tmux/plugins/tpm/tpm'

set -g focus-events on

# 高亮边框
# set-option -g pane-active-border-style "bg=colour150"
# set-option -ag pane-active-border-style "fg=black"
 # setw -g window-active-style 'bg=black' # bg color of active pane
 # setw -g window-style 'bg=black' # bg color of inactive pane(s)

# 状态栏配置
#---------------在当前窗口下划线-----------
set -g window-status-current-style 'underscore'
#---------------设置窗格的边框颜色--------
set -g pane-border-style fg=green
set -g pane-active-border-style 'fg=red,bg=white'
#---------------粗体显示窗格标题---------
set -g pane-border-status top
set -g pane-border-format '#[bold]#{pane_title}#[default]'

# -----------------------------------------------------------------------------
# 结束
# -----------------------------------------------------------------------------

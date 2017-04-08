"Modified in 2017-03-29 By Zhengxing Zhang 

"让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

"快捷键前缀
let mapleader="-"

"开启文件类型侦测
filetype on

"根据文件类型加载对应的插件
filetype plugin on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number
syntax enable
syntax on

nmap <Leader>q :wq<CR>

"插件管理
">>>>>
"vundle环境安装

"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle

filetype off
set rtp+=~/.vim/bundle/vundle
"run :PluginInstall in command-line mode after the plugin is declared.
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on
"<<<<<
"配色方案
set background=dark
"colorscheme solarized
"设置状态栏主题风格
set guifont=Monaco:h14
let g:Powerline_colorscheme='solarized256'

"配置NERDTree
nmap <Leader>t :NERDTreeToggle<CR>
let NERDTreeWinSize=22
let NERDTreeWinPos="left"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=0
let NERDTreeAutoDeleteBuffer=1

"设置子窗口快捷键
"遍历子窗口
nnoremap n  <C-W><C-W>
"右方窗口
nnoremap l <C-W>l
"左方窗口
nnoremap j <C-W>h
"上方窗口
nnoremap k <C-W>k
"下方窗口
nnoremap , <C-W>j

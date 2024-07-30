let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
set laststatus=2
set backspace=2
set autoindent
set cindent
set smartindent
set tabstop=2
set softtabstop=2
syntax enable
set shiftwidth=2
set expandtab
set noshowmode " Powerline에서 보여주니까 여기선 빼자
set number
set nobackup
filetype off
" set clipboard=unnamed
set hlsearch
set incsearch " 순간검색
set ignorecase " 검색에서 대소문자를 구분하지 않음
set smartcase " 대문자로 검색하면 구분을 함
set mouse=a " 마우스 사용 가능
set autoread " 파일 변경시 자동 로드
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Bundle 'gmarik/Vundle.vim'
  Bundle 'christoomey/vim-tmux-navigator'
  Bundle 'scrooloose/nerdtree'
  Bundle 'vim-ruby/vim-ruby'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Bundle 'edkolev/tmuxline.vim'

  " dash/zeal
  let s:uname = system("uname")
  if s:uname =~ "Darwin"
    Bundle 'rizzatti/dash.vim'
  else
    Bundle 'KabbAmine/zeavim.vim'
  endif

  Bundle 'elixir-lang/vim-elixir'
  Bundle 'tpope/vim-rails'
  Bundle 'ctrlpvim/ctrlp.vim'
  Bundle 'leafgarland/typescript-vim'
  Bundle 'wikitopian/hardmode'
  Bundle 'airblade/vim-gitgutter'
  Bundle 'rking/ag.vim'
  Bundle 'catppuccin/nvim'
call vundle#end()

filetype plugin indent on
colorscheme catppuccin-macchiato

" CtrlP Configuration
let g:ctrlp_working_path_mode = 'ra'

" NeoComplete Configuration
let g:neocomplete#enable_at_startup = 1

map <C-S> :w<cr>
imap <C-s> <esc>:w<cr>i

" Up and Down for wrapped lines
nnoremap j gj
nnoremap k gk

" Clear search highlights
noremap <silent><leader>/ :nohls<cr>
" When syntax highlight malfunctioning
noremap <silent><leader>' :syntax sync fromstart<cr>

" Make a new tab like Firefox®
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
map <C-n> :NERDTreeToggle<CR>

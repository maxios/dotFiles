" plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'AlessandroYorba/Sierra'
Plug 'iCyMind/NeoSolarized'
Plug 'cseelus/vim-colors-lucid'
Plug 'AlessandroYorba/Alduin'
Plug 'tpope/vim-fugitive'
Plug 'rakr/vim-one'
Plug 'romgrk/winteract.vim'
Plug 'joeytwiddle/sexy_scroller.vim'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'dart-lang/dart-vim-plugin'
Plug 'leafgarland/typescript-vim'
Plug 'mhartington/nvim-typescript'
Plug 'vim-airline/vim-airline-themes'
Plug 'posva/vim-vue'
Plug 'othree/html5.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'pangloss/vim-javascript'
Plug 'crusoexia/vim-javascript-lib'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-bundler'
"Plug 'wakatime/vim-wakatime'
Plug 'airblade/vim-gitgutter'
Plug 'rking/ag.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'flowtype/vim-flow'
"Plug 'steelsojka/deoplete-flow'
"Plug 'ternjs/tern_for_vim'
"Plug 'carlitux/deoplete-ternjs'
Plug 'moll/vim-node'
Plug 'neomake/neomake'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-repeat'
Plug 'nguquen/vim-shot-f'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'
Plug 'mbbill/undotree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
"Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'
Plug 'thoughtbot/vim-rspec'
Plug 'skywind3000/asyncrun.vim'
Plug 'nikvdp/ejs-syntax'
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'rhysd/vim-grammarous'
Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'chaoren/vim-wordmotion'
Plug 'reisub0/hot-reload.vim'
Plug 'dart-lang/dart-vim-plugin'

call plug#end()
" clipboard
set clipboard+=unnamedplus
set pastetoggle=<F2>

"dart flutter configuration
let dart_format_on_save = 1
let dart_style_guide = 2
" to have html rules of vue files and keep the vue heighliting
set ft=html
" color
syntax on
let g:airline_theme='one'
let g:sierra_Sunset = 1
let g:one_allow_italics = 1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
set termguicolors
"let g:alduin_Shout_Fire_Breath = 1
"colorscheme sierra
"colorscheme alduin
"colorscheme NeoSolarized
colorscheme one
"colorscheme OceanicNext
set background=dark

if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"change VertSpit color of colorscheme `one`
hi VertSplit guifg=#1b1b24 guibg=#707070 guisp=#707070 gui=bold
" airline
let g:airline_powerline_fonts=1
"let g:airline_theme='one'
"let g:airline_theme='solarized'
"let g:airline_solarized_bg='dark'
"let g:solarized_termcolors=256
let base16colorspace=256
let g:airline_theme='base16_ocean'
let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_exclude_preview = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

"silver searcher
let g:ag_working_path_mode="r"
let g:ackprg = 'ag --vimgrep'

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
" setting editors
set number
set relativenumber
set visualbell
hi MatchParen guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
set list
set tabstop=2 shiftwidth=2 expandtab
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" let alt 'send' ESC key
let s:printable_ascii = map(range(65, 122), 'nr2char(v:val)')
for s:char in s:printable_ascii
  execute "inoremap <A-" . s:char . "> <Esc>" . s:char
endfor
unlet s:printable_ascii s:char
" highlight cursor line
"set cursorline
set splitbelow
set splitright

"no wrap
set nowrap
" jsx
let g:jsx_ext_required = 0
" NERDTree
let NERDTreeShowLineNumbers=1
map <C-n> :NERDTreeToggle<CR>
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

endif
" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" bind // for search visual selection
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy
" Use deoplete
let g:deoplete#enable_at_startup = 1
"let g:deoplete#disable_auto_complete = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#enable_smart_case = 1
let deoplete#tag#cache_limit_size = 5000000
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = []
inoremap <silent><expr><tab> pumvisible() ? "\<C-n>" : "\<tab>"
inoremap <silent><expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <silent><expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
imap <silent><expr><CR> pumvisible() ? "\<C-y>" : "\<Plug>delimitMateCR\<Plug>DiscretionaryEnd"
"inoremap <silent><expr><CR> <C-r>=<SID>deoplete_cr()<CR>
function! s:deoplete_cr()
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
"inoremap <silent><expr><Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <silent><expr><c-@> deoplete#mappings#manual_complete()
inoremap <silent><expr><c-space> deoplete#mappings#manual_complete()
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd FileType css,scss setlocal iskeyword=@,48-57,_,-,?,!,192-255
" Neomake
autocmd! BufWritePost * Neomake
let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
let g:neomake_jsx_enabled_makers = ['eslint', 'flow']
let g:neomake_java_enabled_makers = []
let g:neomake_open_list = 0
let g:neomake_error_sign = {'text': '✖', 'texthl': 'ErrorMsg'}
let g:neomake_warning_sign = {'text': '⚠','texthl': 'WarningMsg'}
let g:neomake_message_sign = {'text': '➤','texthl': 'MessageMsg'}
let g:neomake_info_sign = {'text': 'ℹ', 'texthl': 'InfoMsg'}
" easymotion
let mapleader=" "
let g:EasyMotion_do_mapping = 0 "Disable default mappings
let g:EasyMotion_startofline = 0 "keep cursor column when JK motion
let g:EasyMotion_smartcase = 1
map <Leader>f <Plug>(easymotion-s)
nmap <Leader>s <Plug>(easymotion-overwin-f2)
nmap gw :InteractiveWindow<CR>
map <Leader>/ <Plug>(easymotion-sn)
map <Leader>n <Plug>(easymotion-next)
map <Leader>N <Plug>(easymotion-prev)

"ESC
imap jj <Esc>

" toggle
function! GetBufferList()
  redir =>buflist
  silent! ls!
  redir END
  return buflist
endfunction

function! ToggleList(bufname, pfx)
  let buflist = GetBufferList()
  for bufnum in map(filter(split(buflist, '\n'), 'v:val =~ "'.a:bufname.'"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
    if bufwinnr(bufnum) != -1
      exec(a:pfx.'close')
      return
    endif
  endfor
  if a:pfx == 'l' && len(getloclist(0)) == 0
    echohl ErrorMsg
    echo "Location List is Empty."
    return
  endif
  let winnr = winnr()
  exec(a:pfx.'open')
  if winnr() != winnr
    wincmd p
  endif
endfunction

nnoremap <silent> <Leader>[ :call ToggleList("Location List", 'l')<CR>
nnoremap <silent> <Leader>] :call ToggleList("Quickfix List", 'c')<CR>
" mapping misc keys
let g:gitgutter_map_keys = 0
nnoremap <silent> <Leader>w :w<CR>
nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>x :x<CR>
noremap <silent> <Leader>h <C-W><C-H>
noremap <silent> <Leader>j <C-W><C-J>
noremap <silent> <Leader>k <C-W><C-K>
noremap <silent> <Leader>l <C-W><C-L>
noremap <silent> <leader>u :UndotreeToggle<CR>
noremap <silent> <Leader>re :reg<CR>
noremap <silent> <Leader>p "0p
noremap <silent> <Leader>y :let @0=@*<CR>
noremap <silent> <Leader>ch :noh<CR>
noremap <silent> <Leader>tt :tabnew<CR>

noremap <Leader>tn :bn<CR>
noremap <Leader>tp :bp<CR>
noremap <Leader>td :bd<CR>
"for i in range(0, 9)
  "execute 'noremap <silent> <Leader>p' . i . ' "' . i .'p'
"endfor
" map esc key
"inoremap <esc> <nop>
"inoremap jk <esc>
" mapping for quick switch windows
let g:airline_section_c = '%{winnr()}  %<%f%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
for i in range(1, 9)
  execute 'nnoremap <silent> <Leader>' . i . ' :' . i . 'wincmd w<CR>'
endfor
" Use tern_for_vim.
"let g:tern#command = ["tern"]
"let g:tern#arguments = ["--persistent"]
"let g:tern_request_timeout = 1
"let g:tern_show_signature_in_pum = '0'
set completeopt-=preview
" multi-cursors
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_exit_from_insert_mode = 0
let g:multi_cursor_next_key='<C-s>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

function Multiple_cursors_before()
  let g:deoplete#disable_auto_complete = 1
endfunction
function Multiple_cursors_after()
  let g:deoplete#disable_auto_complete = 0
endfunction
" nerdcommenter
let NERDSpaceDelims=1
" tagbar
"nnoremap <silent> <Leader>tb :TagbarToggle<CR>
" gutentags
set statusline+=%{gutentags#statusline('[Generating...]')}
let g:gutentags_add_default_project_roots=0
let g:gutentags_project_root = ['.withtags']
let g:gutentags_ctags_exclude=["node_modules"]

" imap jw <Esc> :w<CR>
" imap jj <Esc>

autocmd BufWritePre * %s/\s\+$//e

" flow setup (neomake, deoplete, vim-flow)
"let g:flow#enable = 0
"let g:flow#omnifunc = 0
"let g:flow#autoclose = 1
"let g:flow#timeout = 4
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"au FileType javascript nnoremap <silent> <c-]> :FlowJumpToDef<cr>
"au FileType javascript nnoremap <silent> <Leader>d :FlowType<cr>

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))
if g:flow_path != 'flow not found'
"  let g:deoplete#sources#flow#flow_bin = g:flow_path
  let g:neomake_javascript_flow_exe = g:flow_path
"  let g:flow#flowpath = g:flow_path
endif

let g:eslint_path = StrTrim(system('PATH=$(npm bin):$PATH && which eslint'))
if g:eslint_path != 'eslint not found'
  let g:neomake_javascript_eslint_exe = g:eslint_path
endif

" RSpec.vim mappings
map <silent> <Leader>sc :call RunCurrentSpecFile()<cr>:copen<cr>
map <silent> <Leader>sn :call RunNearestSpec()<cr>
map <silent> <Leader>sl :call RunLastSpec()<cr>
map <silent> <Leader>sa :call RunAllSpecs()<cr>
vnoremap  <leader>y +y
let g:rspec_command = "AsyncRun rspec {spec}"

" Toggle number display
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <silent> <Leader>nt :call NumberToggle()<cr>

" Language Servers
let g:LanguageClient_serverCommands = {
\ 'javascript': ['flow-language-server', '--try-flow-bin', '--stdio'],
\ 'javascript.jsx': ['flow-language-server', '--try-flow-bin', '--stdio'],
\ }
" Automatically start language servers.
let g:LanguageClient_autoStart = 1
au FileType javascript nnoremap <silent> <c-]> :call LanguageClient_textDocument_definition()<cr>
au FileType javascript nnoremap <silent> <leader>rn :call LanguageClient_textDocument_rename()<cr>
let g:LanguageClient_diagnosticsList='location'

" delimitMate
let g:endwise_no_mappings = 1
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

"go
let g:go_fmt_command = "goimports"
let g:neomake_go_gometalinter_args = []
let g:go_autodetect_gopath = 1

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:SexyScroller_EasingStyle = 3
let g:SexyScroller_ScrollTime = 20
let g:SexyScroller_CursorTime = 80


au FileType go let $GOPATH = go#path#Detect()

set t_ut=

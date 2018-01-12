set nocompatible
set encoding=utf8

call plug#begin('~/.vim/plugged')

" Vim-plug
Plug '907th/vim-auto-save'
Plug 'Chiel92/vim-autoformat'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/denite.nvim'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Taverius/vim-colorscheme-manager'
Plug 'asciidoc/vim-asciidoc'
Plug 'bcicen/vim-vice'
Plug 'bimlas/vim-high'
Plug 'cespare/vim-toml'
Plug 'ckarnell/history-traverse'
Plug 'danro/rename.vim'
Plug 'dkprice/vim-easygrep'
Plug 'elzr/vim-json'
Plug 'flazz/vim-colorschemes'
Plug 'gabrielelana/vim-markdown'
Plug 'godlygeek/tabular'
Plug 'isRuslan/vim-es6'
Plug 'itchyny/vim-cursorword'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-slash'
Plug 'kana/vim-textobj-user'
Plug 'lodestone/lodestone.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'machakann/vim-sandwich'
Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-startify'
Plug 'moll/vim-node'
Plug 'othree/eregex.vim'
Plug 'othree/jspc.vim'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}
Plug 'reedes/vim-lexical'
Plug 'reedes/vim-pencil'
Plug 'rhysd/vim-crystal'
Plug 'roosta/vim-srcery'
Plug 'ryanoasis/vim-devicons'
Plug 'sgur/vim-editorconfig'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-expand-region'
Plug 'tommcdo/vim-lion'
Plug 'tomtom/tlib_vim' " utilities
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rsi'
Plug 'trevordmiller/nova-vim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'ujihisa/neco-look'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/Word-Fuzzy-Completion'
Plug 'vim-utils/vim-husk' " Emacs-y keys
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Plug 'joereynolds/deoplete-minisnip'
" Plug 'joereynolds/vim-minisnip'
" Plug 'ton/vim-bufsurf'
" Plug 'wvffle/vimterm'
" Plug 'Shougo/neco-syntax'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'Shougo/neosnippet.vim'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-buffer.vim'
" Plug 'prabirshrestha/asyncomplete-tags.vim'
" Plug 'yami-beta/asyncomplete-omni.vim'


call plug#end()

" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
" \ 'name': 'omni',
" \ 'whitelist': ['*'],
" \ 'blacklist': ['html'],
" \ 'completor': function('asyncomplete#sources#omni#completor')
" \  }))

" call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
" \ 'name': 'buffer',
" \ 'whitelist': ['*'],
" \ 'blacklist': ['go'],
" \ 'completor': function('asyncomplete#sources#buffer#completor')
" \ }))
 



" function! s:fzf_insert(data)
"   execute 'normal!' (empty(s:fzf_query) ? 'a' : 'ciW')."\<C-R>=a:data\<CR>"
"   startinsert!
" endfunction

" function! s:fzf_words(query)
"   let s:fzf_query = a:query
"   let matches = fzf#run({
"   \ 'source':  'cat /usr/share/dict/words',
"   \ 'sink':    function('s:fzf_insert'),
"   \ 'options': '--no-multi --query="'.escape(a:query, '"').'"',
"   \ 'down':    '40%'
"   \ })
" endfunction

" inoremap <silent> <C-X><C-W> <C-o>:call <SID>fzf_words(expand('<cWORD>'))<CR>


" Replace the default dictionary completion with fzf-based fuzzy completion
inoremap <expr> <c-x><c-k> fzf#complete('cat /usr/share/dict/words')











" au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#tags#get_source_options({
"     \ 'name': 'tags',
"     \ 'whitelist': ['c'],
"     \ 'completor': function('asyncomplete#sources#tags#completor'),
"     \ 'config': {
"     \    " Max file size in bytes. Defaults to 20mb
"     \    'max_file_size': 20000000,
"     \  },
"     \ }))

" Plug 'ervandew/supertab'
"
let mapleader = ","
filetype plugin on

" Autosave settings
" let g:session_autosave_periodic = 'yes'
" let g:session_autosave = 'yes'
" let g:session_autoload = 'yes'
let g:session_autosave = 'no'

let g:loaded_python_provider=1
let g:python3_host_prog = '/usr/local/bin/python3'

" Vimfiler settings
" Use Vimfiler not Netrw
" ----
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_expand_jump_to_first_child=0
let g:vimfiler_safe_mode_by_default=0
let g:vimfiler_enable_auto_cd=0
let g:vimfiler_file_icon = "⸬"
let g:vimfiler_readonly_file_icon = "𐄂"
let g:vimfiler_tree_closed_icon = "‣"
let g:vimfiler_tree_leaf_icon = ""
let g:vimfiler_tree_opened_icon = "▾"
let g:vimfiler_marked_file_icon = "✓"


" Startify settings
let g:startify_change_to_vcs_root = 0
let g:startify_session_persistence = 0
let g:startify_disable_at_vimenter = 0
let g:startify_custom_header = ["   Startify"]

" Airline themes I like: 'bubblegum', 'murmur', 'laederon'
" ----------------------------------
let g:airline_theme='laederon'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
" let g:airline_section_error = ''
" let g:airline_section_warning = ''

" Colorscheme switcher. F1/F2 to switch
" ----
let g:colorscheme_manager_define_mappings=0
let g:colorscheme_switcher_exclude=[]

" FZF settings
" ----
let g:fzf_buffers_jump = 1
let g:fzf_layout = { 'down': '~60%' }
let g:fzf_tags_command = 'ctags -R'
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Exception'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" SuperTab settings
" ----
" let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabDefaultCompletionType = "<c-n>"

" imap <C-j>     <Plug>(neosnippet_expand_or_jump)
" smap <C-j>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-j>     <Plug>(neosnippet_expand_target)

let g:neosnippet#snippets_directory='~/.config/nvim/plugins/vim-snippets/snippets'

set omnifunc=syntaxcomplete#Complete

" Sandwich settings
" ----
let g:textobj#sandwich#timeoutlen=1500

" Don't be a savage, autosave.
" ----
let g:auto_save = 0

set wrap " Fixes my horizontal scrolling woes
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
" set complete+=k
set autoindent
" Be Quiet
" set belloff=all
set nostartofline
" Don't use tabs. Buffers work.
set showtabline=0
set cursorline
set completeopt=menu,longest
set backspace=indent,eol,start
set expandtab
set gdefault
set scrolloff=5
set hidden
set history=1000
set hlsearch
set incsearch
set ignorecase
set laststatus=2
set magic
set mouse=a
set nobackup
set nomore
set noswapfile
set nowb
set linebreak
set number
set pastetoggle=<F5>
set rtp+=/usr/local/opt/fzf
set shiftwidth=2
set si
set smartcase
set smarttab
set tabstop=2
set timeout timeoutlen=350 ttimeoutlen=0
set wildmenu
set wildcharm=<Tab>
set wildmode=list:longest,full

if exists('$NVIM')
  set term=screen-256color
endif

" Custom ex commands
" ----
command! Q quit
command! WRITE write
command! W write
command! WQ wq
command! Wq wq

" Enable sensible wrapping
command! -nargs=* Wrap set wrap linebreak nolist breakindent breakindentopt=shift:2

" Toggle the Quickfix window
" ----
command! -bang -nargs=? QFix call QFixToggle(<bang>0)

" Wrapper for our basic fuzzy finder
" -------------------------------------------
function! Finder(what)
  " :Denite -direction=dynamicbottom -reversed -auto-resize a:what
  " :Denite -direction=dynamicbottom -reversed -auto-resize file_rec
  " GFiles [OPTS]`  
  " GFiles?`        
  " Buffers`        
  " Colors`         
  " Ag [PATTERN]`   
  " Lines [QUERY]`  
  " BLines [QUERY]` 
  " Tags [QUERY]`   
  " BTags [QUERY]`  
  " Marks`          
  " Windows`        
  " Locate PATTERN` 
  " History`        
  " History:`       
  " History/`       
  " Snippets`       
  " Commits`        
  " BCommits`       
  " Commands`       
  " Maps`           
  " Helptags`       
  " Filetypes`      
  if a:what == 'lines'
    :Lines 
  elseif a:what == 'yanks'
    :FZFNeoyank
  elseif a:what == 'in-file'
    :BLines
  elseif a:what == 'recent'
    :History
  elseif a:what == 'help'
    :Helptags
  elseif a:what == 'buffers'
    :Buffers
  elseif a:what == 'buffer_tags'
    :BTags
  else
    :Files
  endif
endfunction

function! DeniteFinder(what)
  if a:what == 'lines'
    :Denite -direction=dynamicbottom -reversed -auto-resize line
  elseif a:what == 'in-file'
    :Denite -direction=dynamicbottom -reversed -auto-resize line
  elseif a:what == 'recent'
    :Denite -direction=dynamicbottom -reversed -auto-resize file_mru
  elseif a:what == 'help'
    :Denite -direction=dynamicbottom -reversed -auto-resize help
  elseif a:what == 'buffers'
    :Denite -direction=dynamicbottom -reversed -auto-resize buffer
  elseif a:what == 'yanks'
    :Denite -direction=dynamicbottom -reversed -auto-resize yank
  else
    :Denite -direction=dynamicbottom -reversed -auto-resize buffer file_rec
  endif
endfunction

function! FinderArgs(A,B,C)
  return (["files", "in-file", "buffers", "recent", "buffer_tags", "lines", "yanks"])
endfunction

" Finder
command! -bang -nargs=? -complete=customlist,FinderArgs Find call Finder('<args>')
command! -bang -nargs=? -complete=customlist,FinderArgs F call Finder('<args>')

" Alt Finder
command! -bang -nargs=? -complete=customlist,FinderArgs AltFind call DeniteFinder('<args>')
command! -bang -nargs=? -complete=customlist,FinderArgs AF call DeniteFinder('<args>')

" -------------------------------------------

function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
  else
    execute "copen "
  endif
endfunction

" Used to track the quickfix window
augroup QFixToggle
 autocmd!
 autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
 autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END

" Grep settings
" ----
" if executable('ag')
"   set grepprg=ag\ --nogroup\ --nocolor
" endif
if executable('rg')
  " Use Ripgrep https://github.com/BurntSushi/ripgrep
  set grepprg=rg\ --vimgrep
elseif executable('ag')
  " Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
  set grepprg=ag\ --nogroup\ --nocolor
endif

" Autocommands
" ----
if has("autocmd")
  " Omnicompletion settings
  " ----
  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  " autocmd FileType asciidoc setlocal omnifunc=AsciidocComplete

  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  autocmd BufRead,BufNewFile * if &readonly == 1 |:cnoremap <C-k> <C-\>estrpart(getcmdline(), 0, getcmdpos()-1)<CR>
  autocmd CmdwinEnter * map <buffer> <Esc> <C-c><C-c>
  autocmd BufRead,BufEnter,BufNewFile * execute "set nospell"

  " Always make help open full screen
  " ----
  autocmd BufEnter * if &buftype=='help'|set awa|only|endif

  " Allow Escaping out of FZFs
  autocmd BufEnter * execute "map <Esc> <Esc>"
  " autocmd BufEnter * execute "nmap <CR> <C-f>"
  " autocmd FileType fzf execute "map <buffer> <Esc> <C-c>:q<CR>"
  autocmd FileType qf execute "map <Esc> <C-c>:bd<CR>"
  " autocmd FileType term://* execute "map <Esc> <C-c>:bd<CR>"

  " autocmd FileType qf execute "unmap <CR>"
  " autocmd BufEnter * if &buftype=='fzf'|execute "map <Esc> <C-c>:quit<CR>"|endif

endif



" inoremap <F5> <C-R>=ListMonths()<CR>
" inoremap <C-i> <C-r>=AsciidocComplete()<CR>

" TODO: Finish this 2017-04-02
function! AsciidocComplete(arg1,arg2)
  call complete(col('.'), ['January', 'February', 'March',
        \ 'April', 'May', 'June', 'July', 'August', 'September',
        \ 'October', 'November', 'December'])
  return ''
endfunc


" Z command - switch directories with z
" uses ~/bin/zcd script
" ----
silent! command! -nargs=1 Z cd $HOME | let s:z = system("$HOME/bin/zcd <args>") | silent! exec 'cd ' . s:z | echo "Changing to " . s:z

" Tmux settings
" Change CursorShape 
" ----
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

call denite#custom#option('default', 'prompt', '❯')
" Use rg
" call denite#custom#source(
"  \ 'file_rec', 'vars', {
"  \   'command': [
"  \      'rg', '--files'
"  \   ] })
" Use ag
call denite#custom#var('file_rec', 'command',
  \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

call denite#custom#source(
  \ 'file_rec', 'matchers', ['matcher_cpsm'])

" call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
call denite#custom#source('grep', 'sorters', ['sorter_sublime'])

" Define alias
" call denite#custom#alias('source', 'anything', 'file_rec')

" Ripgrep command on grep source
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts',
      \ ['--vimgrep', '--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

call denite#custom#map(
      \ 'insert',
      \ '<down>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-n>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<up>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-p>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)


" if !exists('$NVIM')
"   " Use neocomplete.
"   let g:neocomplete#enable_at_startup = 1
"   " Use smartcase.
"   let g:neocomplete#enable_smart_case = 1
"   let g:neocomplete#enable_auto_select = 1
"   " <C-h>, <BS>: close popup and delete backword char.
"   inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"   inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" endif


" Completion settings
" <CR>: close popup and save indent.
" ----
function! s:CleverCR()
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
inoremap <silent> <CR> <C-r>=<SID>CleverCR()<CR>

function! CleverTab()
  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
    return "\<Tab>"
  else
    return "\<CR>"
  endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

autocmd FileType vimfiler nmap <buffer> <CR> <Plug>(vimfiler_cd_or_edit)
autocmd FileType vimfiler nmap <buffer> l <Plug>(vimfiler_cd_or_edit)
autocmd FileType vimfiler nmap <buffer> h <Plug>(vimfiler_switch_to_parent_directory)
autocmd FileType vimfiler nmap <buffer> <Backspace> <Plug>(vimfiler_switch_to_parent_directory)
" autocmd FileType vimfiler nmap <buffer> <Backspace> <C-^>

let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'i:tests',
        \ 'F:singleton methods'
    \ ]
  \ }


" Define prefix dictionary
" let g:lmap =  {}

" Second level dictionaries:
" let g:lmap.f = { 'name' : 'Find Things' }
" let g:lmap.o = { 'name' : 'Open Stuff' }
" let g:lmap.t = { 'name' : 'Toggle Junk' }
" 'name' is a special field. It will define the name of the group.
" leader-f is the "File Menu" group.
" Unnamed groups will show an empty string

" Provide commands and descriptions for existing mappings
" nmap <silent> <leader>ov :e $MYVIMRC<CR>
" let g:lmap.o.v = ['e $MYVIMRC', 'Open vimrc']

" nmap <silent> <leader>fs :so %<CR>
" let g:lmap.f.s = ['so %', 'Source file']

" nmap <silent> <leader>oo  :copen<CR>
" let g:lmap.o.o = ['copen', 'Open quickfix']

" nmap <silent> <leader>ol  :lopen<CR>
" let g:lmap.o.l = ['lopen', 'Open locationlist']

" nmap <silent> <leader>fw :w<CR>
" let g:lmap.f.w = ['w', 'Write file']

" let g:pad#title_first_line=1
" let g:pad#dir='~/=/Cortex-Mind'
" let g:pad#open_in_split=0
" let g:pad#search_backend='ag'
" let g:pad#default_format='asciidoc'
" let g:pad#default_file_extension='adoc'

" Spelling highlight settings
" ----
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=red term=underline cterm=underline



" Markdown FileType settings
" ----
" autocmd FileType markdown set spell spelllang=en_us
" autocmd FileType markdown set wrap
" autocmd FileType asciidoc set spell spelllang=en_us
" autocmd FileType asciidoc set wrap


" cmap <C-l> <Plug>Cmd2
" cmap <expr> <Tab> Cmd2#ext#complete#InContext() ? "\<Plug>(Cmd2Complete)" : "\<Tab>"

function! s:colors(...)
  return filter(map(filter(split(globpath(&rtp, 'colors/*.vim'), "\n"),
        \                  'v:val !~ "^/usr/"'),
        \           'fnamemodify(v:val, ":t:r")'),
        \       '!a:0 || stridx(v:val, a:1) >= 0')
endfunction

" ----------------------------------------------------------------------------
" <F8> | Color scheme selector
" ----------------------------------------------------------------------------
function! s:rotate_colors()
  if !exists('s:colors')
    let s:colors = s:colors()
  endif
  let name = remove(s:colors, 0)
  call add(s:colors, name)
  execute 'colorscheme' name
  redraw
  echo name
endfunction
nnoremap <silent> <F12> :call <SID>rotate_colors()<cr>

function! s:copy_rtf(line1, line2, ...)
  let [ft, cs, nu] = [&filetype, g:colors_name, &l:nu]
  let lines = getline(1, '$')

  tab new
  setlocal buftype=nofile bufhidden=wipe nonumber
  let &filetype = ft
  call setline(1, lines)

  execute 'colo' get(a:000, 0, 'seoul256-light')
  hi Normal ctermbg=NONE guibg=NONE

  let lines = getline(a:line1, a:line2)
  let indent = repeat(' ', min(map(filter(copy(lines), '!empty(v:val)'), 'len(matchstr(v:val, "^ *"))')))
  call setline(a:line1, map(lines, 'substitute(v:val, indent, "", "")'))

  call tohtml#Convert2HTML(a:line1, a:line2)
  g/^\(pre\|body\) {/s/background-color: #[0-9]*; //
  silent %write !textutil -convert rtf -textsizemultiplier 1.3 -stdin -stdout | pbcopy

  bd!
  tabclose

  let &l:nu = nu
  execute 'colorscheme' cs
endfunction

let s:darwin = has('mac')

if s:darwin
  command! -range=% -nargs=? -complete=customlist,s:colors CopyRTF call s:copy_rtf(<line1>, <line2>, <f-args>)
endif

" let g:github_dashboard = { 'username': 'lodestone' }
let g:github_dashboard = { 'username': 'lodestone', 'password': $GITHUB_TOKEN }


function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction
autocmd! User FzfStatusLine call <SID>fzf_statusline()

" Set a temporary background color.
"  I use this to differentiate 
"  visually between windows easily.
function! SetBackground(color)
  let setbg=':highlight Normal guibg=' . a:color
  exec setbg
  " let setbg=':highlight Normal ctermbg=' . a:color
  " exec setbg
endfunction
command! -nargs=? BackgroundColor :call SetBackground(<f-args>)
" Like this: :BackgroundColor #445566



" NEOVIM TERMINAL MODE
" ----
let g:terminal_color_0 = "#3C4C55"
let g:terminal_color_1 = "#DF8C8C"
let g:terminal_color_2 = "#A8CE93"
let g:terminal_color_3 = "#DADA93"
let g:terminal_color_4 = "#83AFE5"
let g:terminal_color_5 = "#9A93E1"
let g:terminal_color_6 = "#7FC1CA"
let g:terminal_color_7 = "#C5D4DD"
let g:terminal_color_8 = "#899BA6"
let g:terminal_color_9 = "#F2C38F"
let g:terminal_color_10 = "#A8CE93"
let g:terminal_color_11 = "#DADA93"
let g:terminal_color_12 = "#83AFE5"
let g:terminal_color_13 = "#D18EC2"
let g:terminal_color_14 = "#7FC1CA"
let g:terminal_color_15 = "#E6EEF3"

let $NVIM_TUI_ENABLE_TRUE_COLOR=1


if has("gui_vimr")
  " VimR specific stuff
endif

if has("gui_macvim")
  " MacVim specific stuff
endif

" let g:nv_directories = ["~/=/Cortex-Mind", "~/=/Projects/Gaming"]

" if $PATH !~ "\.rbenv"
"   let $PATH="/home/username/.rbenv/shims:/home/username/.rbenv/bin:" . $PATH
" endif

" let g:ale_linters = { 
"       \  'javascript': ['flow','eslint'], 
"       \ }

set wildignore=*/node_modules,*/tmp
" Add to wildignore for CommandT
" let g:CommandTWildIgnore=&wildignore . '*.whatever'


" 'find' causes the scanner to ignore wildignore, ruby is the default anyway.
" let g:CommandTFileScanner = 'ruby'
" let g:CommandTTraverseSCM = 'dir'

let g:AutoPairsMapCR=0

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" let g:minisnip_trigger = '<C-j>'

" imap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

set pumheight=12

" inoremap <silent><expr><CR> pumvisible() ? deoplete#mappings#close_popup()."\<Plug>(neosnippet_expand_or_jump)" : "\<CR>"

" imap <expr><CR> neosnippet#expandable() ? "\<Plug>(neosnippet_expand)" : pumvisible() ?
" \ "\<C-y>" : "\<CR>"

" imap <expr><TAB>
"  \ pumvisible() ? "\<C-n>" :
"  \ neosnippet#expandable_or_jumpable() ?
"  \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" I want to use my tab more smarter. If we are inside a completion menu jump
" to the next item. Otherwise check if there is any snippet to expand, if yes
" expand it. Also if inside a snippet and we need to jump tab jumps. If none
" of the above matches we just call our usual 'tab'.
" function! s:neosnippet_complete()
"   if pumvisible()
"     return "\<c-n>"
"   else
"     if neosnippet#expandable_or_jumpable() 
"       return "\<Plug>(neosnippet_expand_or_jump)"
"     endif
"     return "\<tab>"
"   endif
" endfunction

" imap <expr><TAB> <SID>neosnippet_complete()

" inoremap <silent><expr> <TAB>
"     \ pumvisible() ? "\<C-n>" :
"     \ <SID>check_back_space() ? "\<TAB>" :
"     \ deoplete#mappings#manual_complete()
" function! s:check_back_space() abort "{{{
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~ '\s'
" endfunction"}}}


" TODO: Make this into a writing autocomplete
" inoremap <F5> <C-R>=ListMonths()<CR>

" func! ListMonths()
"   call complete(col('.'), ['January', 'February', 'March',
" 	\ 'April', 'May', 'June', 'July', 'August', 'September',
" 	\ 'October', 'November', 'December'])
"   return ''
" endfunc
" <	This isn't very useful, but it shows how it works.  Note that
" 	an empty string is returned to avoid a zero being inserted.



" <CR>: close popup and save indent.
" inoremap <silent> <Tab> <C-r>=<SID>my_tab_function()<CR>
" function! s:my_tab_function() abort
"   if neosnippet#expandable_or_jumpable()
"     return "\<C-j>"
"   else
"     return pumvisible() ? deoplete#close_popup() : "\<Tab>"
"   endif
" endfunction

" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function() abort
"   " if neosnippet#expandable_or_jumpable()
"   "   return "\<C-j>"
"   " else
"     return pumvisible() ? deoplete#close_popup() : "\<CR>"
"   " endif
" endfunction




" let g:deoplete#complete_method = 'omnifunc'

call deoplete#custom#set('_', 'matchers', ['matcher_full_fuzzy'])

set completeopt+=noinsert

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-y>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

let g:deoplete#auto_complete_start_length = 1
" let g:deoplete#sources = {}
" let g:deoplete#sources._ = []
" let g:deoplete#omni#functions = {}
" let g:deoplete#omni#functions.ruby = ['buffer', 'tag', 'rubycomplete#Complete']
" let g:deoplete#omni#functions.javascript = [
"   \ 'tern#Complete',
"   \ 'jspc#omni'
"   \]

" let g:deoplete#sources['javascript'] = ['file', 'buffer', 'tag', 'ternjs']
" let g:tern#command = ['tern']
" let g:tern#arguments = ['--persistent']


" let g:neosnippet#enable_snipmate_compatibility = 0

" augroup textobj_quote
"   autocmd!
"   autocmd FileType markdown,md call textobj#quote#init()
"   autocmd FileType asciidoc,adoc call textobj#quote#init()
"   autocmd FileType textile call textobj#quote#init()
"   autocmd FileType text call textobj#quote#init({'educate': 0})
" augroup END

augroup lexical
  autocmd!
  autocmd FileType asciidoc,adoc call lexical#init()
  autocmd FileType markdown,md call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END

" vim-wheel - makes scrolling better with trackpad
let g:wheel#scroll_on_wrap = 1

" let g:lexical#thesaurus = ['~/.vim/thesaurus.txt',]


" Write Good in Neovim
function! GoWrite()
  let g:auto_save = 1
  setlocal nonumber
  setlocal wrap
  setlocal linebreak
  setlocal nolist
  setlocal breakindent
  setlocal breakindentopt=shift:2
  setlocal laststatus=0
  nmap j gj
  nmap k gk
  au FileType * execute 'setlocal dict+=.words.txt'
  set nocursorline
  Goyo
  Wrap
endfunction

silent! command! WritingMode call GoWrite()

" Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum

" Dolorem a quo maiores nihil error quam voluptatem. Totam corrupti nisi saepe consequatur corrupti maxime explicabo labore. Velit rerum maxime esse qui dolor rerum. Sunt quo sapiente unde et perspiciatis dolorem. Dolorum est eum excepturi. Nobis aliquam occaecati quia velit in et odit.
" augroup EnableWritingMode
"   autocmd!
"   autocmd BufNewFile,BufRead {*.asciidoc,*.adoc,*.md,*.markdown}
"   call GoWrite()
" augroup END



" let spc = g:airline_symbols.space

let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c' ],
    \ [ 'x', 'y', 'z', 'error', 'warning' ]
    \ ]

let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

let g:airline#extensions#whitespace#enabled = 0

" let g:airline#extensions#wordcount#filetypes = ['markdown','rst','org','help','text','tex','mail','asciidoc']
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#wordcount#filetypes = 'vhelp|markdown|rst|org|text|asciidoc|tex|mail'

" bold, italic, red, green, blue, yellow, orange, purple, none
call airline#parts#define_accent('file', 'bold')

set ttimeoutlen=50

function! AirlineInit()
  let g:airline#extensions#wordcount#enabled = 1
  let g:airline#extensions#wordcount#filetypes = 'vhelp|markdown|rst|org|text|asciidoc|tex|mail'
  let g:airline_section_a = airline#section#create(['mode', '%{&paste ? "[PASTE]" : ""}'])
  " let g:airline_section_b = airline#section#create_left(['%{getcwd()}', 'file'])
  let g:airline_section_b = airline#section#create_left(['file'])
  " let g:airline_section_c = airline#section#create(['%<', '%t'])
  " let g:airline_section_c = airline#section#create_left(['%-0.10{getcwd()}'])
  
  let g:airline_section_c = '%{getcwd()}/'
  " let g:airline_section_c = airline#section#create(['%<'])
  let g:airline_section_gutter = airline#section#create(['%='])
  let g:airline_section_x = '%{HistoryIndicator()}'
  let g:airline_section_y = airline#section#create(['filetype'])
  " let g:airline_section_x = airline#section#create_right(['%Y'])
  " let g:airline_section_x = airline#section#create_right(['%{tolower('.%Y)}'])
  let g:airline_section_z = airline#section#create(['branch'])
  " let g:airline_section_error = airline#section#create_right(['%{ALEGetStatusLine()}'])
  " let g:airline_section_warning = airline#section#create(['w'])
endfunction
autocmd VimEnter * call AirlineInit()

" function! AirlineInit()
"     let g:airline_section_a = airline#section#create(['mode'])
"     " let g:airline_section_b = airline#section#create_left(['hunks'])
"     let g:airline_section_c = airline#section#create(['%f'])
"     let g:airline_section_x = airline#section#create(['branch', 'ffenc'])
"     let g:airline_section_y = airline#section#create(['filetype'])
" endfunction
" autocmd VimEnter * call AirlineInit()

let g:airline_skip_empty_sections = 1

" AirlineToggleWhitespace


hi deniteMatchedChar ctermbg=NONE ctermfg=69 guifg=SlateBlue


" imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"       \ "\<Plug>(neosnippet_expand_or_jump)"
"       \: pumvisible() ? "\<CR>" : "\<TAB>"
"       " \: pumvisible() ? "\<C-n>" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"       \ "\<Plug>(neosnippet_expand_or_jump)"
"       \: "\<TAB>"

" Add support for markdown files in tagbar.
" let g:tagbar_type_markdown = {
"     \ 'ctagstype': 'markdown',
"     \ 'ctagsbin' : '~/bin/markdown2ctags.py',
"     \ 'ctagsargs' : '-f - --sort=yes',
"     \ 'kinds' : [
"         \ 's:sections',
"         \ 'i:images'
"     \ ],
"     \ 'sro' : '|',
"     \ 'kind2scope' : {
"         \ 's' : 'section',
"     \ },
"     \ 'sort': 0,
"     \ }

let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
    \ }


" call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
"     \ 'name': 'buffer',
"     \ 'whitelist': ['*'],
"     \ 'blacklist': ['go'],
"     \ 'completor': function('asyncomplete#sources#buffer#completor'),
"     \ }))


" au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#necosyntax#get_source_options({
"     \ 'name': 'necosyntax',
"     \ 'whitelist': ['*'],
"     \ 'completor': function('asyncomplete#sources#necosyntax#completor'),
"     \ }))

inoremap <expr> <c-x><c-k> fzf#complete('cat /usr/share/dict/words')








" nnoremap ; :

nmap <leader>c gcc
vmap <leader>c gcc
nnoremap - $
nnoremap <leader>vc :e $MYVIMRC<cr>

nnoremap <leader>o :only<cr>


nnoremap <leader>fm :Maps<cr>
nnoremap <leader>f' :Marks<cr>
nnoremap <leader>ff :Find files<cr>
nnoremap <leader>fif :Find in-file<cr>
nnoremap <leader>fr :Find recent<cr>
nnoremap <leader>ft :Tags<cr>
nnoremap <leader>fw :GrepperRg <c-r><c-w><cr>
nnoremap <leader>fb :Find buffers<cr>

nnoremap <leader><tab> <leader>
" nnoremap <leader>s <leader>
nnoremap <leader>d :Denite <c-i>

nnoremap <leader>g :GrepperRg 
nnoremap <leader>e :VimFilerExplorer<cr>
nnoremap <leader>q :QFix<cr>
nnoremap <leader>bd :bd<cr>

nnoremap <leader><leader> :Find buffers<cr>
nnoremap <space><space> :Find recent<cr>

nnoremap <leader><leader><leader> :AF<cr>
nnoremap <space><space><space> :AF<cr>

nnoremap <leader>up :Denite -no-statusline -direction=dynamicbottom register<cr>

nnoremap <leader>fp :Denite -no-statusline -direction=dynamicbottom -reversed -auto-resize neoyank register<cr>
inoremap <c-p> <up>

nnoremap <c-p> :Find<cr>

nnoremap <leader>f :Find<cr>

nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

inoremap <c-n> <down>
inoremap <c-a> <esc>i
nnoremap <c-a> 0
nnoremap <c-e> $
nnoremap <tab> <c-w><c-w> " make tab do something useful in normal mode
nnoremap q <nop> " wtf is ex mode anyways? ;-)
noremap q: :q " annoying window
inoremap <c-d> <esc>lxi
nnoremap <c-d> <del>

nnoremap <backspace> <c-^>

nnoremap <leader>z :Z 

nnoremap <leader>eb :VimFilerBufferDir<cr>
nnoremap <leader>ee :VimFiler<cr>
nnoremap <leader>ec :BimFilerCurrentDir<cr>

" nnoremap y y$
vmap j <down>
vmap k <up>
vmap <c-j> :join<cr>
vmap <c-j> :join<cr>

" nnoremap <silent> <c-left> :BufSurfBack<cr>
" nnoremap <silent> <c-right> :BufSurfForward<cr>
nnoremap <silent> <c-left> :HisTravBack<cr>
nnoremap <silent> <c-right> :HisTravForward<cr>

nmap vis <plug>(textobj-sandwich-auto-i)
nmap vas <plug>(textobj-sandwich-auto-a)

nnoremap s <nop>
xnoremap s <nop>

nmap sd sdb
vmap sd db
nmap ds sdb
vmap ds db
nmap as sa
vmap as sa
nnoremap q <nop>
nnoremap q <nop>
vnoremap q <nop>
nnoremap qq :quit<cr>
vnoremap qq :quit<cr>
nnoremap <c-k> d$

nmap go gf:only<cr>

map <f1> :PrevColorScheme<cr>
map <f2> :NextColorScheme<cr>

vnoremap < <gv
vnoremap > >gv

vnoremap <expr>y "my\"" . v:register . "y`y"

autocmd BufRead,BufNewFile /path/to/minisnips/* set filetype=minisnip

colorscheme lodestone


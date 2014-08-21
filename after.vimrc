" Bundles {{{
Bundle 'vim-scripts/perl-support.vim'
Bundle 'buffet.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'vim-scripts/bash-support.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'mhinz/vim-signify'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'godlygeek/tabular'
Bundle 'ervandew/supertab'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'honza/vim-snippets'
" A better paste.
Bundle 'sickill/vim-pasta'
" A better grep.
Bundle 'mileszs/ack.vim'
" Searches a file for todo, fixme.
Bundle 'vim-scripts/TaskList.vim'
" }}}

colorscheme hybrid

nmap <leader>bl :Bufferlist<enter>

" Fugitive {{{
  nnoremap <silent> <leader>gs :Gstatus<CR>
  nnoremap <silent> <leader>gd :Gdiff<CR>
  nnoremap <silent> <leader>gc :Gcommit<CR>
  nnoremap <silent> <leader>gb :Gblame<CR>
  nnoremap <silent> <leader>gl :Glog<CR>
  nnoremap <silent> <leader>gp :Git push<CR>
  nnoremap <silent> <leader>gr :Gread<CR>
  nnoremap <silent> <leader>gw :Gwrite<CR>
  nnoremap <silent> <leader>ge :Gedit<CR>
  " Mnemonic _i_nteractive
  nnoremap <silent> <leader>gi :Git add -p %<CR>
  nnoremap <silent> <leader>gg :SignifyToggle<CR>
" }}}

set mousehide               " Hide the mouse cursor while typing
set mouse=a
set novisualbell

let g:syntastic_enable_perl_checker = 1
let g:airline_theme='molokai'

let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.it', '\.hg', '\.svn', '\.bzr']

" Ack {{{

map <Leader>a :Ack!

" }}}

" indent_guides {{{
  if isdirectory(expand("~/.vim/bundle/vim-indent-guides/"))
      let g:indent_guides_start_level = 2
      let g:indent_guides_guide_size = 1
      let g:indent_guides_enable_on_vim_startup = 1
  endif
" }}}

" EasyMotion {{{
  " Jump to anywhere you want with minimal keystrokes, with just one key binding.
  " `s{char}{label}`
  nmap s <Plug>(easymotion-s)
  " or
  " `s{char}{char}{label}`
  " Need one more keystroke, but on average, it may be more comfortable.
  nmap s <Plug>(easymotion-s2)

  " Turn on case sensitive feature
  let g:EasyMotion_smartcase = 1

  " JK motions: Line motions
  map <Leader>j <Plug>(easymotion-j)
  map <Leader>k <Plug>(easymotion-k)
" }}}

" Поддержка кирилицы {{{
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
" }}}
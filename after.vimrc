Bundle 'vim-scripts/perl-support.vim'
Bundle 'buffet.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'vim-scripts/bash-support.vim'
"UnBundle 'spf13/vim-autoclose'
Bundle 'mhinz/vim-signify'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'honza/vim-snippets'
Bundle 'godlygeek/tabular'
"Bundle 'msanders/snipmate.vim'

colorscheme hybrid

nmap <leader>bl :Bufferlist<enter>


" Fugitive {
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
"}

set mousehide               " Hide the mouse cursor while typing
set mouse=a
set novisualbell
set paste

let g:syntastic_enable_perl_checker = 1
let g:airline_theme='molokai'

let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.it', '\.hg', '\.svn', '\.bzr']

" indent_guides {
  if isdirectory(expand("~/.vim/bundle/vim-indent-guides/"))
      let g:indent_guides_start_level = 2
      let g:indent_guides_guide_size = 1
      let g:indent_guides_enable_on_vim_startup = 1
  endif
" }

" EasyMotion {
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
"}

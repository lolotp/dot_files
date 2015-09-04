" --- Plugin Manager ---
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on
set nowrap
set showmatch
set nobackup
set noswapfile
set title
set pastetoggle=<F2>
set shiftround

" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()
nmap <silent> <leader>] :NERDTreeTabsToggle<CR>
inoremap <S-tab> <Esc>

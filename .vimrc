colo lucius
syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set incsearch
set hlsearch
set number
set ruler
set wrap
filetype plugin on
autocmd FileType python set omnifunc=pythoncomplete#Complete

"""""""""""""
" Shortcuts "
"""""""""""""
" file operations
:map ,ffs :FufFile<CR>
:map ,fo <C-w>f
" python tools
:map ,pyf :!pyflakes %<CR>
" git
:map ,gb :!git blame %<CR>
:map ,gd :!git diff %<CR>
" textual helpers
:map ,c :s/^/#/<CR>
:map ,C :s/^#//<CR>
" scratch buffer
:map ,sb :Sscratch<CR>
" diff helpers
:map ,iw :set diffopt+=iwhite<CR>

"""""""""""
" iPython "
"""""""""""
" copy the ipython kernel file from virtual machine
" :silent ! ( IP_ADDRESS=10.11.12.13; nc -w 1 -z ${IP_ADDRESS} 22 && scp vm-appannie:/home/vagrant/.ipython/profile_default/security/kernel-*.json ~/kernel.json && cat ~/kernel.json | sed "s/0.0.0.0/${IP_ADDRESS}/" > ~/appannie-kernel.json ) > /dev/null 2>&1 < /dev/null &
" for manual invocation
:map ,ipa :IPython --existing ~/appannie-kernel.json<CR>
:map <F7> <Plug>(IPython-RunLines)

"""""""""
" CTAGS "
"""""""""
" use with ctags to jump to definition
:map ,b g<C-]>
:map ,B <C-W>g<C-]>
" run ctags in the background
:if match(expand('%:p'), "/Users/cheeming/InfiniteCode/Projects/DCR-MyCover/src/dcr-mycover/website") >= 0 || match(expand('%:p'), "/Users/cheeming/InfiniteCode/Projects/Shoppr/src/shoppr/backend/scraping") >= 0

    :silent ! ctags --languages=python --python-kinds=-i --exclude=build --exclude=src --exclude=binary -R . > /dev/null 2>&1 & 
:endif

" for manual run
:map ,ct :let x = system("ctags --languages=python,javascript --python-kinds=-i --exclude=build --exclude=src --exclude=binary -R . `cat .ctags_paths` &")<CR>

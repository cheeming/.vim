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

:map <F2> :let x = system('ctags --languages=python --python-kinds=-i -R .')<CR>
:map <F3> :FufFile<CR>
:map <F4> <C-w>f
:map <F5> :!pyflakes %<CR>
:map <F6> :!git blame %<CR>
:map <F7> :!git diff %<CR>
:map ,c :s/^/#/<CR>
:map ,C :s/^#//<CR>
:map ,b g<C-]>
:map ,B <C-W>g<C-]>

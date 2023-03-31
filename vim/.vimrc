  autocmd VimEnter * :%left 4
    set rtp+=$HOME/.local/lib/python3.11.2/site-packages/powerline/bindings/vim/
    :set buftype=
    :autocmd BufWinEnter * setlocal modifiable
    " Always show statusline
    set laststatus=2
    set statusline=%{cmake#GetInfo().cmake_version.string}
    " Use 256 colours (Use this setting only if your terminal supports 256 colours)
    set t_Co=256
    "set swapfile = false
    set colorcolumn = "80"
    set signcolumn = "yes"
    "set updatetime = 50
    set nuw=6
    hi LineNr  guifg=#505050   guibg=Black
    hi Normal  guifg=White     guibg=Black
    set modifiable
    set write
    "set relativenumber" Always show the command as it is being typed.
    set showcmd
    set linespace=3
    set background=dark
    set ruler
    set hid
    set noma
    set ma
    "let base16colorspace=256
    set termguicolors
    set smartcase
    set hlsearch
    set incsearch
    set mat=2
    set showmatch numberwidth=5
    set modifiable
    set magic
    set tabstop=4 shiftwidth=4 expandtab
    set smarttab
    set lbr
    set tabstop=4
    set t_Co=256
    set runtimepath^=~/.vim/bundle/ctrlp.vim
    set shell=/bin/zsh
    filetype on
    set laststatus=2
    set nocompatible
    "set number relativenumber
    set wrap
    set encoding=utf-8
    set formatoptions-=cro
    call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    "Plug 'vim-airline/vim-airline-themes'
    Plug 'jiangmiao/auto-pairs'
    Plug 'kien/rainbow_parentheses.vim'
    Plug 'https://github.com/junegunn/vim-plug.git'
    Plug 'alfredodeza/pytest.vim'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'scrooloose/nerdcommenter'
    nnoremap <silent> <leader>c} V}:call nerdcommenter#Comment('x', 'toggle')<CR>
    nnoremap <silent> <leader>c{ V{:call nerdcommenter#Comment('x', 'toggle')<CR>
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'dense-analysis/ale'
    map <F5> :ALEDetail <CR>
    Plug 'itchyny/lightline.vim'
    "Plug 'vim-airline/vim-airline'
    Plug 'cdelledonne/vim-cmake'
    Plug 'vim-scripts/c.vim'
    Plug 'w0rp/ale'
    "Plug 'valloric/youcompleteme'
    Plug 'majutsushi/tagbar'
    map <F9> :TagbarToggle<CR>
    Plug 'kien/ctrlp.vim'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'nightsense/carbonized'
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-fugitive'
    let g:deoplete#enable_at_startup = 1
    Plug 'vim-scripts/OmniCppComplete'

    Plug 'chriskempson/base16-vim'
    Plug 'hdima/python-syntax'
    Plug 'mbbill/undotree'
    Plug 'aserebryakov/vim-branch-stack'
    Plug 'terryma/vim-multiple-cursors'

    Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
    Plug 'ThePrimeagen/harpoon'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'mbbill/undotree'
    map <F7> :UndotreeToggle<CR>
    Plug 'tyru/open-browser.vim' " opens url in browser
    Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
    Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
    map <F8> :NERDTree<CR>
    map <F12> :NERDTreeClose <CR>
    Plug 'chiel92/vim-autoformat'
    Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview

    Plug 'https://github.com/ctrlpvim/ctrlp.vim'
    call plug#end()
    let g:airline_powerline_fonts = 1
    let g:airline_left_sep = " | "
    let g:airline_left_sep = "|"
    let g:airline_right_sep = "Fayshal"
    let g:airline_right_sep = " |"
    let g:airline#extensions#tabline#enabled = 1
    " Create default mappings
    let g:NERDCreateDefaultMappings = 1

    let g:NERDSpaceDelims = 1

    let g:NERDCompactSexyComs = 1

    let g:NERDDefaultAlign = 'left'

    let g:NERDAltDelims_java = 1

    let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

    let g:NERDCommentEmptyLines = 1

    let g:NERDTrimTrailingWhitespace = 1
    let g:NERDToggleCheckAllLines = 1
    let g:ale_completion_enabled = 1
    let g:ale_linters_explicit = 1
    let g:ale_sign_column_always = 1
    let g:ale_sign_error = '>>'
    let g:ale_sign_warning = '--'
    highlight clear ALEErrorSign
    highlight clear ALEWarningSign
    " Set this in your vimrc file to disabling highlighting
    let g:ale_set_highlights = 0
    highlight ALEWarning ctermbg=DarkMagenta
    " Set this. Airline will handle the rest.
    let g:airline#extensions#ale#enabled = 1
    let g:ale_echo_msg_error_str = 'E'
    let g:ale_echo_msg_warning_str = 'W'
    let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
    nmap <silent> <C-k> <Plug>(ale_previous_wrap)
    nmap <silent> <C-j> <Plug>(ale_next_wrap)
    " Write this in your vimrc file
    let g:ale_lint_on_text_changed = 'never'
    let g:ale_lint_on_enter = 0
    let g:ale_set_loclist = 0
    let g:ale_set_quickfix = 1
    let g:ale_open_list = 1
    let g:ale_list_window_size = 5

    let g:cpp_function_highlight = 0

    let g:cpp_attributes_highlight = 1

    let g:cpp_simple_highlight = 1


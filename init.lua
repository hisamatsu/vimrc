-- set number             "行番号を表示
-- set autoindent         "改行時に自動でインデントする
-- set tabstop=2          "タブを何文字の空白に変換するか
-- set shiftwidth=2       "自動インデント時に入力する空白の数
-- set expandtab          "タブ入力を空白に変換
-- set splitright         "画面を縦分割する際に右に開く
-- set hls                "検索した文字をハイライトする
-- set clipboard+=unnamedplus "yank した文字列をクリップボードにコピー

-- "wsl の場合は、clipbord を win32yank.exe にする。
-- if match(system('uname -r'), 'microsoft') != -1
--   let g:clipboard = {
--        \   'name': 'myClipboard',
--        \   'copy': {
--        \      '+': 'win32yank.exe -i',
--        \      '*': 'win32yank.exe -i',
--        \    },
--        \   'paste': {
--        \      '+': 'win32yank.exe -o',
--        \      '*': 'win32yank.exe -o',
--        \   },
--        \   'cache_enabled': 1,
--        \ }
-- endif

-- inoremap <silent> jj <ESC> "インサートモードのEscをjjに変更
-- " 日本語入力で”っj”と入力してもEnterキーで確定させればインサートモードを抜ける
-- inoremap <silent> っｊ <ESC>

-- "wsl の場合は、
-- "インサートモード・コマンドラインを抜ける時にIMEをオフにする。
-- if match(system('uname -r'), 'microsoft') != -1
--   autocmd InsertLeave * :call system('zenhan.exe 0')
--   autocmd CmdlineLeave * :call system('zenhan.exe 0')
-- endif

-- if &compatible
--     set nocompatible
-- endif
-- set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
-- if dein#load_state('~/.cache/dein')
--     call dein#begin('~/.cache/dein')
--     call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
--     call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
--     call dein#end()
--     call dein#save_state()
-- endif
-- if dein#check_install()
--     call dein#install()
-- endif
-- filetype plugin indent on
-- syntax enable

-- let g:airline#extensions#tabline#enabled = 1 " タブラインを表示
-- let g:airline#extensions#branch#enabled = 1
-- let g:airline_powerline_fonts = 1            " Powerline Fontsを利用
-- let g:airline_theme = 'powerlineish'

-- nmap <C-p> <Plug>AirlineSelectPrevTab
-- nmap <C-n> <Plug>AirlineSelectNextTab



-- encoding
vim.o.encoding = 'utf-8'
vim.scriptencoding = 'utf-8'

-- visual
vim.o.ambiwidth = 'single'
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true

vim.o.visualbell = true
vim.o.number = true
vim.o.showmatch = true
vim.o.matchtime = 1

-- search
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.api.nvim_set_keymap('n', '<Esc><Esc>', ':nohl<CR>', { noremap = true, silent = true})

-- manipulation
vim.g.mapleader = ' '
vim.opt.clipboard:append{'unnamedplus'}
vim.o.ttimeout = true
vim.o.ttimeoutlen = 50

vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath('cache') .. '/undo'

vim.api.nvim_set_var('mapleader', ' ')
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true })
vim.api.nvim_set_keymap('n', '<Down>', 'gj', { noremap = true })
vim.api.nvim_set_keymap('n', '<Up>', 'gk', { noremap = true })
vim.api.nvim_set_keymap('n', 'gj', 'j', { noremap = true })
vim.api.nvim_set_keymap('n', 'gk', 'k', { noremap = true })

-- d -> delete
vim.api.nvim_set_keymap('n', 'd', '"_d', { noremap = true })

-- load lazy.nvim
require('lazy_nvim')

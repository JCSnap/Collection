:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a


call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/github/copilot.vim' " Github Copilot
Plug 'https://github.com/ctrlpvim/ctrlp.vim' " Command p for file search similar to VSCode
Plug 'https://github.com/folke/which-key.nvim' " Which Key
Plug 'https://github.com/iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' } " Markdown Preview
Plug 'https://github.com/MeanderingProgrammer/render-markdown.nvim' " Markdown Renderer
Plug 'norcalli/nvim-colorizer.lua' " Colorizer
Plug 'themaxmarchuk/tailwindcss-colors.nvim' " Tailwind CSS Colors
Plug 'https://github.com/tailwindlabs/tailwindcss-intellisense' " Tailwind CSS IntelliSense
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'MunifTanjim/nui.nvim' " Dependency for noicevim
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/rcarriga/nvim-notify' " Notifications
Plug 'https://github.com/folke/noice.nvim' " Noice Vim
Plug 'nvim-lua/plenary.nvim' " Required dependency for leetcode.nvim
Plug 'nvim-telescope/telescope.nvim' " Required for leetcode.nvim picker
Plug 'https://github.com/kawre/leetcode.nvim' " Leetcode
Plug 'https://github.com/mrcjkb/haskell-tools.nvim' " haskell

call plug#end()

lua << EOF
require("render-markdown").setup({
  code = {
    style = "full",
    border = "hide",
    width = "full",
    language = true,
    language_icon = true,
    language_name = true,
    inline = true,
  },
})
EOF


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:NERDTreeShowHidden=1

" Auto start NERD tree when opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | wincmd p | endif

autocmd FileType json syntax match Comment +\/\/.\+$+

nnoremap <SPACE> <Nop>
let mapleader=" "

let g:NERDTreeChDirMode = 0

nnoremap <silent> <leader>f :NERDTreeFocus<CR>
nnoremap <silent> <leader>t :NERDTreeToggle<CR>
nnoremap <silent> <leader>m :MarkdownPreviewToggle<CR>

" If we're in NERDTree, jump to the previous window before running Telescope
function! s:GoPrevIfNERDTree() abort
  if &filetype ==# 'nerdtree'
    wincmd p
  endif
endfunction

function! s:TelescopeFindFiles() abort
  call <SID>GoPrevIfNERDTree()
  lua require('telescope.builtin').find_files({ cwd = vim.fn.getcwd() })
endfunction

function! s:TelescopeLiveGrep() abort
  call <SID>GoPrevIfNERDTree()
  lua require('telescope.builtin').live_grep({ cwd = vim.fn.getcwd() })
endfunction

nnoremap <silent> <leader>ff :call <SID>TelescopeFindFiles()<CR>
nnoremap <silent> <leader>fg :call <SID>TelescopeLiveGrep()<CR>

:set completeopt-=preview " For No Previews

:set clipboard+=unnamedplus

:colorscheme jellybeans

hi Normal guibg=NONE ctermbg=NONE

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

nnoremap <silent> <leader>s :CocCommand prettier.formatFile<CR>
nnoremap <silent> <leader>p :CtrlP<CR>

" Leetcode keybindings
nnoremap <silent> <leader>lq :Leet<CR>
nnoremap <silent> <leader>ll :Leet list<CR>
nnoremap <silent> <leader>lr :Leet run<CR>
nnoremap <silent> <leader>ls :Leet submit<CR>

" lua require("noice").setup()
lua require("which-key").setup()

" Leetcode.nvim configuration
lua << EOF
require("leetcode").setup({
    lang = "python3",
})
EOF

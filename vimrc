""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/autoload/plugged')
	" Better Syntax Support
	Plug 'sheerun/vim-polyglot'

	" File Explorer
	Plug 'scrooloose/NERDTree'

	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'

	" themes
	Plug 'joshdick/onedark.vim'

	" Stable version of coc
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Ranger
	Plug 'francoiscabrol/ranger.vim'

	" colorizer
	Plug 'norcalli/nvim-colorizer.lua'

	" Rainbow parenthese
	Plug 'junegunn/rainbow_parentheses.vim'

	" FZF
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'airblade/vim-rooter'

	" Vim-commentary
	Plug 'tpope/vim-commentary'

	" Git
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-rhubarb'
	Plug 'junegunn/gv.vim'

	" Startify
	Plug 'mhinz/vim-startify'

	" Sneak
	Plug 'justinmk/vim-sneak'

	" which-key
	Plug 'liuchengxu/vim-which-key'

	" Quickscope
	Plug 'unblevable/quick-scope'

	" Snippets
	Plug 'honza/vim-snippets'

	" FAR
	Plug 'ChristianChiarulli/far.vim'

	" multi-cursor
	Plug 'terryma/vim-multiple-cursors'

	" remove trailing whitespace
	Plug 'nestorsalceda/vim-strip-trailing-whitespaces'

	" Tabular
	Plug 'godlygeek/tabular'

   " workspace
   Plug 'thaerkh/vim-workspace'

	" clang-format
	Plug 'rhysd/vim-clang-format'

	" hdl checker
	Plug 'suoto/hdlcc'

	" Xilinx XDC file syntax
	Plug 'amal-khailtash/vim-xdc-syntax'

	" Xilinx UCF syntax
	Plug 'vim-scripts/ucf.vim'

   " Forth syntax
   Plug 'vim-scripts/forth.vim'

	" LazyGit
	Plug 'kdheepak/lazygit.nvim'

	" cpp enhanced highlight
	Plug 'octol/vim-cpp-enhanced-highlight'

	" auto-save
	Plug '907th/vim-auto-save'

	" Undo tree
	Plug 'mbbill/undotree'

	" increment search
	Plug 'haya14busa/is.vim'

	" indent guides
	Plug 'nathanaelkane/vim-indent-guides'

	" devicons
	Plug 'ryanoasis/vim-devicons'

	" rainbow_parentheses
	Plug 'luochen1990/rainbow'

	" bookmark
	Plug 'mattesgroeger/vim-bookmarks'

	" surround signs
	Plug 'tpope/vim-surround'
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set leader key
let g:mapleader = "\<Space>"

syntax enable             " Enables syntax highlighing
set hidden                " Required to keep multiple buffers open multiple buffers
set nowrap                " Display long lines as just one line
set encoding=utf-8        " The encoding displayed
set pumheight=10          " Makes popup menu smaller
set fileencoding=utf-8    " The encoding written to file
set ruler                 " Show the cursor position all the time
set cmdheight=2           " More space for displaying messages
set iskeyword+=-          " treat dash separated words as a word text object                         "
set mouse=a               " Enable your mouse
set splitbelow            " Horizontal splits will automatically be below
set splitright            " Vertical splits will automatically be to the right
set t_Co=256              " Support 256 colors
set conceallevel=0        " So that I can see `` in markdown files
set tabstop=3             " Insert 3 spaces for a tab
set shiftwidth=2          " Change the number of space characters inserted for indentation
set smarttab              " Makes tabbing smarter will realize you have 2 vs 4
set expandtab             " Converts tabs to spaces
set smartindent           " Makes indenting smart
set autoindent            " Good auto indent
set laststatus=0          " Always display the status line
set number                " Line numbers
set cursorline            " Enable highlighting of the current line
set background=dark       " tell vim what the background color looks like
set showtabline=2         " Always show tabs
set noshowmode            " We don't need to see things like -- INSERT -- anymore
set nobackup              " This is recommended by coc
set nowritebackup         " This is recommended by coc
set updatetime=300        " Faster completion
set timeoutlen=500        " By default timeoutlen is 1000 ms
set formatoptions-=cro    " Stop newline continution of comments
set clipboard=unnamedplus " Copy paste between vim and everything else
set autochdir             " Your working directory will always be the same as your working directory
set colorcolumn=81        " set the 80 column marker
set noswapfile            " disable swap file
let NERDTreeShowHidden=1  " enable NERDTree to show hidden files
set hlsearch              " enable search highlight
set ignorecase            " ignore case in search
set incsearch             " increment search


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keybindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TAB in general mode will move to text buffer
nmap <TAB> :bnext<CR>
nmap <S-TAB> :bprevious<CR>

" Alternate way to save
nmap <C-s> :w<CR>

" Alternate way to quit
" save and quit
nmap <C-q> :wq<CR>
" kill a buffer
nmap qq :bd<CR>
" close quick-fix window
nmap qc :cclose<CR>

" Use control-c instead of escape
nmap <C-c> <Esc>

" <TAB>: completion.
imap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vmap < <gv
vmap > >gv

" Better window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-Left> <C-w>h
nmap <C-Down> <C-w>j
nmap <C-Up> <C-w>k
nmap <C-Right> <C-w>l
nmap <leader><Left> <C-w>h
nmap <leader><Down> <C-w>j
nmap <leader><Up> <C-w>k
nmap <leader><Right> <C-w>l
nmap <leader>v <C-w>v
nmap <leader>h <C-w>s

" Git
nmap <leader>g :Git <Right>
nmap <leader>lg :LazyGit<CR>

" Reload init.vim
nmap <leader>qr :source ~/.config/nvim/init.vim<CR>

" open a terminal in new window
nmap <leader>t <C-w>v :terminal<CR>

" Function keys
nmap <F1> :CocCommand explorer<CR>
nmap <F2> :Startify<CR>
nmap <F3> :UndotreeToggle<CR>

" search and replace
" Press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file.
nmap <Leader>r :%s///g<Left><Left>
nmap <Leader>rc :%s///gc<Left><Left><Left>

" The same as above but instead of acting on the whole file it will be
" restricted to the previously visually selected range. You can do that by
" pressing *, visually selecting the range you want it to apply to and then
" press a key below to replace all instances of it in the current selection.
xmap <Leader>r y :%s/<C-r>0/<C-r>0/g<Left><Left>
xmap <Leader>rc y :%s/<C-r>0/<C-r>0/gc<Left><Left><Left>

" command mode
map ; :

" replace in multiple files
xmap <leader>fr
   \ y
   \ :cfdo %s/<C-r>0/<C-r>0/g \| update
   \ <Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" Quick open vim configuration file
nmap <leader>nv :e $HOME/.config/nvim/init.vim<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ColorScheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" onedark.vim override: Don't set a background color when running in a terminal;
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

syntax on
colorscheme onedark

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'onedark'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TextEdit might fail if hidden is not set.
set hidden

" coc extensions
let g:coc_global_extensions = [
   \ 'coc-git',
   \ 'coc-snippets',
   \ 'coc-clangd',
   \ 'coc-pairs',
   \ 'coc-explorer',
   \ 'coc-highlight',
   \ 'coc-json',
   \ 'coc-python',
   \ 'coc-vimlsp',
   \ ]

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nmap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
" nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" xmap if <Plug>(coc-funcobj-i)
" omap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap af <Plug>(coc-funcobj-a)
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
" noremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
" noremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
" noremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
" noremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
" noremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" noremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" noremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
" noremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Explorer
" nmap <space>e :CocCommand explorer<CR>
" nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ranger
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make Ranger replace netrw and be the file explorer
let g:NERDTreeHijackNetrw = 0 " add this line if you use NERDTree
let g:ranger_replace_netrw = 1 " open ranger when vim open a directory
nmap <Leader>e :Ranger<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" search keybindings
nmap <leader>. :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>/ :Rg <Right>
xmap <leader>/ y :Rg <C-r>0

let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"


" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.(<q-args>), 1,
  \   fzf#vim#with_preview({'down': '40%'}),
  \   <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AutoSave
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:auto_save = 0  " disable AutoSave on Vim startup"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ClangFormat
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType c,cpp,objc vmap <M-f> :ClangFormat<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cpp enhanced syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Webdevicons
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
" adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" adding to vim-startify screen
let g:webdevicons_enable_startify = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Forth Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufReadPost *.f set syntax=forth
au BufReadPost *.f set filetype=forth


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent Guides
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup=0 " enable indent guide lines at startup
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LazyGit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quickscope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline

let g:qs_max_chars=150


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rainbow
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sneak
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sneak#label = 1
" case insensitive sneak
let g:sneak#use_ic_scs = 1
" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

" Cool prompts
" let g:sneak#prompt = '🕵'
" let g:sneak#prompt = '🔎'

" I like quickscope better for this since it keeps me in the scope of a single line
" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
" map t <Plug>Sneak_t
" map T <Plug>Sneak_T


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Coc Snippets
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Startify
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_custom_header = [
   \ '   ___ ___         .__  .__            __      __            .__       .___ ',
   \ '  /   |   \   ____ |  | |  |   ____   /  \    /  \___________|  |    __| _/ ',
   \ ' /    ~    \_/ __ \|  | |  |  /  _ \  \   \/\/   /  _ \_  __ \  |   / __ |  ',
   \ ' \    Y    /\  ___/|  |_|  |_(  <_> )  \        (  <_> )  | \/  |__/ /_/ |  ',
   \ '  \___|_  /  \___  >____/____/\____/    \__/\  / \____/|__|  |____/\____ |  ',
   \ '        \/       \/                          \/                         \/  ',
   \]

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
   \ { 'type': 'files',     'header': ['   Files']            },
   \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
   \ { 'type': 'sessions',  'header': ['   Sessions']       },
   \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
   \ ]

let g:startify_bookmarks = [
   \ { 'i': '~/.config/nvim/init.vim' },
   \ { 'z': '~/.zshrc' },
   \ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabularize
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <M-a> :Tabularize /
vmap <M-a> :Tabularize /


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Workspace
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:workspace_create_new_tabs = 1
let g:workspace_persist_undo_history = 1
let g:workspace_undodir='.undodir'
nmap <leader>w :ToggleWorkspace<CR>
let g:workspace_autosave_always = 0
let g:workspace_autosave_ignore = ['gitcommit']

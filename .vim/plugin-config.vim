"-----------------
" Bind JSON to different colorscheme
" autocmd BufEnter *.json colorscheme default
" Vim-JSON plugin
let g:vim_json_syntax_conceal = 0
au BufRead,BufNewFile,BufReadPost *.json set syntax=json
"------------------

"------------------
" Polyglot configuration.
" 
" Disabled languages
let g:polyglot_disabled = ['python']
"------------------
"
""
"""
""""
"""""
""""""
"""""""
" ===========================================

""""""""""""""""""""
" Pymode configuration 
"
""""

" Disable python code folding
let g:pymode_folding = 0

" Disable pymode autocompletion
"let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope=0

let g:pymode_lint = 0

" ============================================
"""""""
"""""
"""
"
"
""
"""
""""
"""""
""""""
"""""""
"""""""""""""""""""""""
" Nerdtree configuration 
"
" Ctrl + n for nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Nerdtree file highlight
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" Enable nerdtree folder highlight
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

" Nerdtree highlight colors
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

" Custom file highlighting
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:orange" sets the color of css files to blue

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['py'] = s:blue" sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

" Vimwiki
" source $HOME/vekyll/vekyll.vim

""""""
" Rainbow parenthasis
"
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"""""
" Scheme indent
"
autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt

"""""
" Tslime
"
let g:tslime_ensure_trailing_newlines = 1
let g:tslime_always_current_session = 1 
let g:tslime_always_current_window = 1
let g:tslime_ensure_trailing_newlines = 1
let g:tslime_normal_mapping = '<localleader>t'
let g:tslime_visual_mapping = '<localleader>t'
let g:tslime_vars_mapping = '<localleader>T'
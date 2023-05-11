call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes
  
"""""""""""""""""""""""""""""""""""""
"""             Custom
"""""""""""""""""""""""""""""""""""""

syntax on
set number	" show line number
set spell	" highlight wrong workds
set hlsearch	" highlight search result cases 
set ruler	" show line,number of curser location at the right down




"""""""""""""""""""""""""""""""""""""
"""             Plugins 
"""""""""""""""""""""""""""""""""""""

" Go Plugin
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"C/C++
Plug 'vbextreme/dumpx'

"Git Ndtree
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
		\ }

let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0

let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0

let g:NERDTreeGitStatusUntrackedFilesMode = 'all' " a heavy feature too. default: normal

let g:NERDTreeGitStatusShowClean = 1 " default: 0


call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

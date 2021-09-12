call plug#begin('~/.vim/plugged')


" Snippets and full LSP support
" (https://github.com/neoclide/coc.nvim)
Plug 'neoclide/coc.nvim', {'branch': 'release'} 


" Colorizer
" https://github.com/norcalli/nvim-colorizer.lua
Plug 'norcalli/nvim-colorizer.lua'


" Peek the registers using '""' in normal mode
" https://github.com/gennaro-tedesco/nvim-peekup
Plug 'gennaro-tedesco/nvim-peekup'


" https://github.com/windwp/nvim-autopairs
Plug 'windwp/nvim-autopairs'


" Sneak-like jumping to labels
" https://github.com/ggandor/lightspeed.nvim
Plug 'ggandor/lightspeed.nvim'


call plug#end()

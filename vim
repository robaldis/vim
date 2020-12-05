syntax on                                                                       
                                                                                
set noerrorbells                                                                
set tabstop=4 softtabstop=4                                                     
set shiftwidth=4                                                                
set expandtab                                                                   
set smartindent                                                                 
set nu                                                                        
set nowrap                                                                      
set smartcase                                                                   
set noswapfile                                                                  
set nobackup                                                                    
set undodir=~/.vim/undodir                                                      
set undofile                                                                    
set incsearch                                                                   
au VimEnter * RainbowParenthesesToggle                                          
                                                                                
set colorcolumn=80                                                              
highlight ColorColumn ctermbg=0 guibg=lightgrey                                 
                                                                                
call plug#begin('~/.vim/plugged')                                               
                                                                                
Plug 'morhetz/gruvbox'                                                          
Plug 'Valloric/YouCompleteMe'                                                   
Plug 'vim-airline/vim-airline'                                                  
Plug 'tpope/vim-fugitive'                                                       
Plug 'airblade/vim-gitgutter'                                                   
Plug 'kien/rainbow_parentheses.vim'                                             
Plug 'scrooloose/nerdtree'                                                      
Plug 'mbbill/undotree'                                                          
Plug 'jremmen/vim-ripgrep'                                                      
                                                                                
call plug#end()                                                                 
                                                                                
                                                                                
                                                                                
colorscheme gruvbox                                                             
set background=dark                                                             
                                                                                
if (executable('rg'))                                                           
    let g:rg_derive_root='true'                                                 
endif                                                                           
                                                                                
let mapleader = " "                                                             
                                                                                
nnoremap <leader>+ :vertical resize +5<CR>                                      
nnoremap <leader>- :vertical resize -5<CR>                                      
                                                                                
                                                                                
nnoremap <leader>h :wincmd h<CR>                                                
nnoremap <leader>l :wincmd l<CR>                                                
nnoremap <leader>k :wincmd k<CR>                                                
nnoremap <leader>j :wincmd j<CR>                                                
nnoremap <leader>u :UndotreeShow<CR>                                            
nnoremap <leader>pv :wincmd v<bar> :e . <bar> :vertical resize 30<CR>           
nnoremap <leader>ps :Rg<SPACE>                                                  
                                                                                
nnoremap <leader>g :Git<CR>                                                     
nnoremap <leader>gs :Git status<CR>                                             
nnoremap <leader>gc :Git commit -m "                                            
nnoremap <leader>ga :Git add .<CR>                                              
                                                                                
nnoremap <leader>gd :YcmCompleter GoTo<CR>

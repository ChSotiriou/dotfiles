vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'quangnguyen30192/cmp-nvim-ultisnips'
  use 'nvim-treesitter/nvim-treesitter'

  -- telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  
  use 'junegunn/goyo.vim'
  use 'PotatoesMaster/i3-vim-syntax'
  use 'VebbNix/lf-vim'
 
  use 'scrooloose/nerdcommenter'
  use 'tpope/vim-surround'
  use 'jiangmiao/auto-pairs'

--  use 'scrooloose/nerdtree'
--  use 'tsony-tsonev/nerdtree-git-plugin'
--  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'ryanoasis/vim-devicons'

  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use {'dracula/vim', as='dracula'}
  use 'unblevable/quick-scope'

  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use 'junegunn/fzf.vim'

  use 'RRethy/vim-hexokinase'
  use 'airblade/vim-gitgutter'
end)

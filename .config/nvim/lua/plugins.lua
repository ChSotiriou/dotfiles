vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- LSP
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    use 'jose-elias-alvarez/null-ls.nvim'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'quangnguyen30192/cmp-nvim-ultisnips'

    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/playground'

    use 'cdelledonne/vim-cmake'

    -- Debugger
    use 'mfussenegger/nvim-dap'
    use 'nvim-telescope/telescope-dap.nvim'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'rcarriga/nvim-dap-ui'

    -- telescope
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'
    use 'ChSotiriou/nvim-telemake'

    -- syntax
    use 'dpelle/vim-languagetool'
    use 'PotatoesMaster/i3-vim-syntax'
    use 'kelwin/vim-smali'
    use 'VebbNix/lf-vim'
    use 'vim-pandoc/vim-pandoc-syntax'
    use 'dhruvasagar/vim-table-mode'
    use 'lervag/vimtex'

    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
    use 'jiangmiao/auto-pairs'

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

    use "akinsho/toggleterm.nvim"
end)

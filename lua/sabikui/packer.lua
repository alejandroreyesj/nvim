-- This filebuiltin.git_files, {}) can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Telescope
    use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    })
    use({
        'nvim-telescope/telescope-fzf-native.nvim',
        run =
        'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    })
    --Treesitter
    use({
        'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }
    })
    use({
        'nvim-treesitter/playground'
    })
    -- LSP Zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }
    -- Harpoon
    use({ 'ThePrimeagen/harpoon' })
    -- Undotree
    use({ 'mbbill/undotree' })
    -- Vim Fugitive
    use({ 'tpope/vim-fugitive' })
    -- Colorschemes
    use({ "catppuccin/nvim", as = "catppuccin" })
    use('folke/tokyonight.nvim')
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({ 'rstacruz/vim-closer' })
    -- Copilot
    use( { "github/copilot.vim" })
    use ({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })
    use ({
        'tpope/vim-surround'
    })
    use ({'airblade/vim-gitgutter'})
    use ({
        'nvim-tree/nvim-tree.lua'
    })
      use ({'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    )
end)
-- Simple plugins can be specified as strings

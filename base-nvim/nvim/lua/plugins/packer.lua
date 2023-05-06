-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    --
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- colortheme
    use({
        'rose-pine/neovim',
        as = 'rose-pine'
        --config = function()
        --vim.cmd('colorscheme rose-pine')
        --end
    })
    use("folke/tokyonight.nvim")
    use("sainnhe/sonokai")
    use({ "catppuccin/nvim", as = "catppuccin" })
    use({ "ellisonleao/gruvbox.nvim" })
    use({ "projekt0n/github-nvim-theme", tag = "v0.0.7" }) -- end

    --
    use({
        "nvim-lualine/lualine.nvim",
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    })
    --
    use({
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons",
        },
    })
    --
    use({
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup({
                --your configuration comes here
                --or leave it empty to use the default settings
                --refer to the configuration section below
            })
        end,
    })
    --
    use({
        "folke/trouble.nvim"
        -- config = function()
        -- require("trouble").setup {
        --     icons = true,
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        -- }
        -- end
    })
    --
    use("numToStr/Comment.nvim")
    --
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use("windwp/nvim-autopairs")
    use('nvim-treesitter/playground')
    -- use("christoomey/vim-tmux-navigator")
    use("ThePrimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("akinsho/bufferline.nvim")                                            -- buffer分割线
    use("szw/vim-maximizer")                                                  -- 窗口尺寸管理
    use("lukas-reineke/indent-blankline.nvim")                                -- 缩进线
    use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" }) -- 折叠
    use('Eandrju/cellular-automaton.nvim')
    use('NvChad/nvterm')
    use('lewis6991/gitsigns.nvim')
    use('kdheepak/lazygit.nvim')

    use("simrat39/symbols-outline.nvim") -- 文件大纲栏
    use("kylechui/nvim-surround")
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }

    --lsp-zeor
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
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
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }
end)

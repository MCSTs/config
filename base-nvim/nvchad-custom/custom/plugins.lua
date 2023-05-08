local overrides = require "custom.configs.overrides"

--@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        -- "jose-elias-alvarez/null-ls.nvim",
        -- config = function()
        --   require "custom.configs.null-ls"
        -- end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    init = function()
      require("core.utils").lazy_load "nvim-surround"
    end,
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    -- event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
        keymaps = {
          normal = "<leader>s",
          normal_cur = "<leader>ss",
          normal_line = "<leader>S",
          normal_cur_line = "<leader>SS",
        },
      }
    end,
  },
  {
    "phaazon/hop.nvim",
    init = function()
      require("core.utils").lazy_load "hop.nvim"
    end,
    branch = "v2", -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
      require("custom.configs.hop")
    end,
  },
  {
    "szw/vim-maximizer",
    init = function()
      require("core.utils").lazy_load "vim-maximizer"
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    init = function()
      require("core.utils").lazy_load "symbols-outline.nvim"
    end,
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("symbols-outline").setup()
    end,
  },
  {
    "kevinhwang91/promise-async",
    init = function()
      require("core.utils").lazy_load "promise-async"
    end,
  },
  {
    "kevinhwang91/nvim-ufo",
    init = function()
      require("core.utils").lazy_load "nvim-ufo"
    end,
    config = function()
      require("ufo").setup {
        provider_selector = function()
          return { "treesitter", "indent" }
        end,
      }
    end,
  },
  {
    "eandrju/cellular-automaton.nvim",
    init = function()
      require("core.utils").lazy_load "cellular-automaton.nvim"
    end,
    config = function()
      require("custom.configs.automaton")
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    init = function()
      require("core.utils").lazy_load "markdown-preview.nvim"
    end,
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "mg979/vim-visual-multi",
    init = function()
      require("core.utils").lazy_load "vim-visual-multi"
    end,
    branch = "master",
    -- config = function()
    -- end,
  },
  {
    "kdheepak/lazygit.nvim",
    init = function()
      require("core.utils").lazy_load "lazygit.nvim"
    end,
    config = function()
      -- require("telescope").load_extension("lazygit")
      require("custom.configs.lazygit")
    end
  },
  {
    "mbbill/undotree",
    init = function()
      require("core.utils").lazy_load "undotree"
    end,
    config = function()
      require("custom.configs.undotree")
    end
  },
}

return plugins

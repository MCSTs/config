local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "c",
    "json",
    "markdown",
    "markdown_inline",
    -- "html",
    -- "css",
    -- "javascript",
    -- "typescript",
    -- "tsx",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    -- "css-lsp",
    -- "html-lsp",
    -- "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    "json-lsp",
  },
}

-- git support in nvimtree
M.nvimtree = {
  filters = {
    dotfiles = true,
  },
  update_focused_file = {
    enable = true,
    update_root = true,
  },
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- cmp
local cmp = require "cmp"
local function noop()
end
M.cmp = {
  mapping = {
    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
    ["<C-d>"] = cmp.mapping.scroll_docs(4),
    ["<C-k>"] = cmp.mapping.complete(),
    ["<C-j>"] = cmp.mapping.close(),
    ["<C-Space>"] = noop,
    -- ["<C-f>"] = noop,
    ["<C-e>"] = noop,
  },
}

return M

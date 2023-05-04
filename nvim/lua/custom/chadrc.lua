---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "bearded-arc",
  theme_toggle = { "bearded-arc", "one_light" },
  transparency = false,
  lsp_semantic_tokens = false, -- needs nvim v0.9, just adds highlight groups for lsp semantic tokens
  
  -- https://github.com/NvChad/base46/tree/v2.0/lua/base46/extended_integrations
  -- extended_integrations = {"notify"}, -- these aren't compiled by default, ex: "alpha", "notify"
  
  -- cmp themeing
  -- cmp = {
  --   icons = true,
  --   lspkind_text = true,
  --   style = "default", -- default/flat_light/flat_dark/atom/atom_colored
  --   border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
  --   selected_item_bg = "colored", -- colored / simple
  -- },
  
  nvdash = {
    load_on_startup = false,
    header = {
      "               ███╗   ███╗  ██████╗ ███████╗ ████████╗               ", 
      "               ████╗ ████║ ██╔════╝ ██╔════╝ ╚══██╔══╝               ", 
      "               ██╔████╔██║ ██║      ███████╗    ██║                  ", 
      "               ██║╚██╔╝██║ ██║      ╚════██║    ██║                  ", 
      "               ██║ ╚═╝ ██║ ╚██████╗ ███████║    ██║                  ", 
      "               ╚═╝     ╚═╝  ╚═════╝ ╚══════╝    ╚═╝                  ", 
    },
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "  Find Word", "Spc f g", "Telescope live_grep" },
      { "  Bookmarks", "Spc b m", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M

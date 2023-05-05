function ColorMyPlan(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    --vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
ColorMyPlan()

-->
--[[ 1.tokyonight
-->
require("tokyonight").setup({
  style = "storm", --`storm`, `moon`, or `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
})
-- ]] --
-- vim.cmd [[colorscheme tokyonight-storm]]



-->
--[[2.catppuccin
-->
require("catppuccin").setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = "latte",
    dark = "mocha",
  },
  transparent_background = false,
  no_italic = false, -- Force no italic
  no_bold = false, -- Force no bold
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
  },
})
]] --
-- vim.cmd [[colorscheme catppuccin]]



-->
-- 3.sonokai
-->
-- vim.cmd [[colorscheme sonokai]]


-->
--[[ 4.github-nvim-theme
-->
require("github-theme").setup({
  -- theme_style = "dark",
  -- function_style = "italic",
  -- sidebars = { "qf", "vista_kind", "terminal", "packer" },
  --
  -- -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  -- colors = { hint = "orange", error = "#ff0000" },
  --
  -- -- Overwrite the highlight groups
  -- overrides = function(c)
  --   return {
  --     htmlTag = { fg = c.red, bg = "#282c34", sp = c.hint, style = "underline" },
  --     DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
  --     -- this will remove the highlight groups
  --     TSField = {},
  --   }
  -- end
})
]] --
-- vim.cmd [[colorscheme github_dark]]



-->
--[[ 5.gruvbox
-->
require("gruvbox").setup({
  -- undercurl = true,
  -- underline = true,
  -- bold = true,
  -- italic = true,
  -- strikethrough = true,
  -- invert_selection = false,
  -- invert_signs = false,
  -- invert_tabline = false,
  -- invert_intend_guides = false,
  -- inverse = true, -- invert background for search, diffs, statuslines and errors
  -- contrast = "", -- can be "hard", "soft" or empty string
  -- palette_overrides = {},
  -- overrides = {},
  -- dim_inactive = false,
  -- transparent_mode = false,
})
]] --
-- vim.cmd [[colorscheme gruvbox]]

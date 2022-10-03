vim.o.ls = 3
vim.o.ch = 0

local filename = require("plugins/lualine/filename")
local lsp_progress = require("plugins/lualine/lsp_progress")
local diff = require("plugins/lualine/diff")
local diagnostics = require("plugins/lualine/diagnostics")

local function lsp_client_names()
  local client_names = {}
  for _, client in ipairs(vim.lsp.get_active_clients()) do
    table.insert(client_names, client.name)
  end
  return table.concat(client_names, ",")
end

require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = "github_dark",
    component_separators = {},
    section_separators = {},
    disabled_filetypes = {},
  },

  sections = {
    lualine_a = { "branch" },
    lualine_b = { { "filetype", colored = false, icon_only = true }, filename },
    lualine_c = { diff, diagnostics },
    lualine_x = { lsp_progress, lsp_client_names },
    lualine_y = { "location" },
    lualine_z = {},
  },

  extensions = { "nvim-tree" },
})

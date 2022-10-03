require("neodev").setup({
  library = {
    enabled = true, -- when not enabled, neodev will not change any settings to the LSP server
    -- these settings will be used for your Neovim config directory
    runtime = true, -- runtime path
    types = true, -- full signature, docs and completion of vim.api, vim.treesitter, vim.lsp and others
    plugins = true, -- installed opt or start plugins in packpath
    -- you can also specify the list of plugins to make available as a workspace library
    -- plugins = { "nvim-treesitter", "plenary.nvim", "telescope.nvim" },
  },
  setup_jsonls = true, -- configures jsonls to provide completion for project specific .luarc.json files
  -- for your Neovim config directory, the config.library settings will be used as is
  -- for plugin directories (root_dirs having a /lua directory), config.library.plugins will be disabled
  -- for any other directory, config.library.enabled will be set to false
  override = function(root_dir, options) end,
  -- With lspconfig, Neodev will automatically setup your lua-language-server
  -- If you disable this, then you have to set {before_init=require("neodev.lsp").before_init}
  -- in your lsp start options
  lspconfig = true,
})

local lspconfig = require("lspconfig")
local null_ls = require("null-ls")
local mason_lspconfig = require("mason-lspconfig")
local mason_null_ls = require("mason-null-ls")

require("mason").setup({
  ui = {
    border = "rounded",
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗",
    },
  },
})

mason_lspconfig.setup()
mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({})
  end,
  ["sumneko_lua"] = function()
    lspconfig.sumneko_lua.setup({
      settings = {
        Lua = {
          completion = {
            callSnippet = "Replace",
          },
        },
      },
    })
  end,
})

-- require("mason-nvim-dap").setup()

mason_null_ls.setup()
mason_null_ls.setup_handlers({
  function(source_name)
    local has_formatting = pcall(require, string.format("null-ls.builtins.formatting.%s", source_name))

    if has_formatting then
      null_ls.register(null_ls.builtins.formatting[source_name])
    end
  end,
})

null_ls.setup({
  sources = {
    null_ls.builtins.code_actions.gitsigns,
  },
})

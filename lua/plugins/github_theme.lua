require("github-theme").setup({
  theme_style = "dark",
  dark_float = true,
  dark_sidebar = false,
  transparent = false,
  hide_inactive_statusline = true,

  comment_style = "italic",
  keyword_style = "NONE",
  function_style = "bold",
  variable_style = "NONE",
})

-- disable background on fold
vim.api.nvim_set_hl(0, 'Folded', {})

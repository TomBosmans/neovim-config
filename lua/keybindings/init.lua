vim.g.mapleader = ","

require("which-key").register({
  ["<space>t"] = { ":NvimTreeFindFileToggle <CR>", "toggle" },
  ["<space>f"] = { ":lua vim.lsp.buf.format { async = true } <CR>", "format" },
  ["<space>r"] = { ":lua vim.lsp.buf.rename() <CR>", "rename" },
  ["<space>e"] = { ":lua vim.diagnostic.open_float() <CR>", "diagnostic" },
  ["<space>ca"] = { ":lua vim.lsp.buf.code_action() <CR>", "format" },
  ["<leader>M"] = { ":Mason <CR>", "Mason" },
  ["<leader>C"] = { ":HighlightColorsToggle <CR>", "toggle colors" },

  ["]d"] = { ":lua vim.diagnostic.goto_next() <CR>", "goto next diagnostic" },
  ["[d"] = { ":lua vim.diagnostic.goto_prev() <CR>", "goto prev diagnostic" },
  ["]g"] = { ":lua require('gitsigns').next_hunk({navigation_message = false}) <CR>", "goto next git hunk" },
  ["[g"] = { ":lua require('gitsigns').prev_hunk({navigation_message = false}) <CR>", "goto prev git hunk" },

  K = { ":lua vim.lsp.buf.hover()<CR>", "hover" },

  ["<leader>s"] = {
    name = "sort",
    s = { ":Sort <CR>", "asc", mode = "v" },
    S = { ":Sort! <CR>", "desc", mode = "v" }
  },

  ["<space>g"] = {
    name = "goto",
    d = { ":Telescope lsp_definitions <CR>", "lsp definition" },
    i = { ":Telescope lsp_implementations <CR>", "lsp implementations" },
    r = { ":Telescope lsp_references <CR>", "lsp references" },
  },

  ["<leader>c"] = {
    name = "Copy",
    r = { ":let @+ = expand('%')<cr>", "relative path" },
    a = { ":let @+ = expand('%:p')<cr>", "absolute path" },
    n = { ":let @+ = expand('%:t')<cr>", "file name" },
  },

  ["t"] = {
    name = "Tabs",
    n = { ":tabnew <CR>", "new" },
    c = { ":tabclose <CR>", "close" },
    s = { ":tab split <CR>", "split" },
    ["1"] = { "1gt<CR>", "goto tab 1" },
    ["2"] = { "2gt<CR>", "goto tab 2" },
    ["3"] = { "3gt<CR>", "goto tab 3" },
    ["4"] = { "4gt<CR>", "goto tab 4" },
    ["5"] = { "5gt<CR>", "goto tab 5" },
    ["6"] = { "6gt<CR>", "goto tab 6" },
    ["7"] = { "7gt<CR>", "goto tab 7" },
    ["8"] = { "8gt<CR>", "goto tab 8" },
    ["9"] = { "9gt<CR>", "goto tab 9" },
  },

  ["<leader>T"] = {
    name = "Treesitter",
    p = { ":TSPlaygroundToggle <CR>", "toggle playground" },
    i = { ":TSInstall ", "install", silent = false },
    u = { ":TSUpdate <CR>", "update" },
    h = { ":TSModuleInfo <CR>", "help" },
    c = { ":TSContextToggle <CR>", "toggle context" },
  },

  ["<leader>l"] = {
    name = "Lsp",
    i = { ":LspInstall ", "install", silent = false },
    u = { ":LspUnstall ", "install", silent = false },
    I = { ":LspInfo <CR>", "info" },
    l = { ":LspLog <CR>", "log" },
    r = { ":LspRestart <CR>", "restart" },
    s = { ":LspStart <CR>", "start" },
    S = { ":LspStop <CR>", "stop" },
  },

  ["<leader>F"] = {
    name = "Formatter",
    i = { ":NullLsInstall ", "install", silent = false },
    u = { ":NullLsUninstall ", "uninstall", silent = false },
    I = { ":NullLsInfo <CR>", "info" },
    l = { ":NullLsLog <CR>", "log" },
  },

  ["<leader>p"] = {
    name = "Packer",
    S = { ":PackerSync <CR>", "sync" },
    c = { ":PackerCompile <CR>", "compile" },
    u = { ":PackerUpdate <CR>", "update" },
    i = { ":PackerInstall <CR>", "install" },
    s = { ":PackerStatus <CR>", "status" },
  },

  ["<leader>f"] = {
    name = "Find",
    f = { ":Telescope find_files <CR>", "files" },
    g = { ":Telescope git_files <CR>", "git files" },
    b = { ":Telescope buffers <CR>", "find" },
    a = { ":Telescope live_grep <CR>", "grep" },
  },

  ["<leader>b"] = {
    name = "Buffers",
    h = { ":BufferPrevious <CR>", "previous buffer"},
    l = { ":BufferNext <CR>", "next buffer"},
    c = { ":BufferClose <CR>", "delete" },
    f = { ":Telescope buffers <CR>", "find" },
    p = { ":BufferPin <CR>", "pin" },
    s = { ":BufferPick <CR>", "select" },
    E = { ":BarbarEnable <CR>", "enable" },
    D = { ":BarbarDisable <CR>", "disable" },
    o = { ":BufferCloseAllButCurrentOrPinned <CR>", "all but current or pinned" },
    d = {
      name = "Delete",
      a = { ":BufferCloseAllButCurrent <CR>", "all but current" },
      v = { ":BufferCloseAllButVisible <CR>", "all but visible" },
      p = { ":BufferCloseAllButPinned <CR>", "all but pinned" },
      P = { ":BufferCloseAllButCurrentOrPinned <CR>", "all but current or pinned" },
    },
    ["1"] = { ":BufferGoto 1<CR>", "goto tab 1" },
    ["2"] = { ":BufferGoto 2<CR>", "goto tab 2" },
    ["3"] = { ":BufferGoto 3<CR>", "goto tab 3" },
    ["4"] = { ":BufferGoto 4<CR>", "goto tab 4" },
    ["5"] = { ":BufferGoto 5<CR>", "goto tab 5" },
    ["6"] = { ":BufferGoto 6<CR>", "goto tab 6" },
    ["7"] = { ":BufferGoto 7<CR>", "goto tab 7" },
    ["8"] = { ":BufferGoto 8<CR>", "goto tab 8" },
    ["9"] = { ":BufferGoto 9<CR>", "goto tab 9" },
  },

  ["<leader>x"] = {
    name = "Tests",
    a = { ":lua require('neotest').run.attach() <CR>", "attach" },
    n = { ":lua require('neotest').run.run() <CR>", "run nearest" },
    f = { ":lua require('neotest').run.run(vim.fn.expand('%')) <CR>", "run file" },
    d = { ":lua require('neotest').run.run({strategy = 'dap'}) <CR>", "debug" },
    o = { ":lua require('neotest').output.open() <CR>", "output" },
    q = { ":lua require('neotest').run.stop() <CR>", "stop" },
    l = { ":lua require('neotest').run.run_last()", "run latest" },
    s = {
      name = "Summary",
      o = { ":lua require('neotest').summary.open() <CR>", "open" },
      c = { ":lua require('neotest').summary.close() <CR>", "close" },
    },
  },

  ["<leader>g"] = {
    name = "Git",
    a = { ":Git <CR>", "manage" },
    l = { ":Git log <CR>", "log" },
    p = { ":Git pull <CR>", "pull" },
    P = { ":Git push origin HEAD --force-with-lease <CR>", "push" },
    f = { ":Git fetch <CR>", "fetch" },
    r = { ":Git rebase --interactive ", "rebase", silent = false },
    R = { "::Git reset HEAD~ <CR>", "reset" },
    c = { ":Telescope git_branches <CR>", "branches" },
    C = { ":Telescope git_commits <CR>", "commits" },
    h = {
      name = "Hunk",
      r = { ":Gitsigns reset_hunk<CR>", "reset hunk" },
      R = { ":Gitsigns reset_buffer<CR>", "reset buffer" },
      b = { ":lua require('gitsigns').blame_line({full=true})<CR>", "blame" },
      p = { ":Gitsigns preview_hunk<CR>", "preview" },
      l = { ":Gitsigns toggle_linehl<CR>", "toggle linehl" },
    },
    d = {
      name = "Diffview",
      o = { ":DiffviewOpen <CR>", "open" },
      h = { ":DiffviewFileHistory % <CR>", "history" },
      c = { ":DiffviewClose <CR>", "close" },
    },
  },
})

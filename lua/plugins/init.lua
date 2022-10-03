return require("packer").startup({
  function(use)
    -- Packer
    use({ "wbthomason/packer.nvim" })

    -- Sandwich
    use({ "machakann/vim-sandwich" })

    -- Fugitive
    use({ "tpope/vim-fugitive" })

    -- Colors
    use({
      "brenoprata10/nvim-highlight-colors",
      config = function()
        require("nvim-highlight-colors").setup()
      end,
    })

    -- Sort
    use({
      "sQVe/sort.nvim",
      config = function()
        require("sort").setup({})
      end,
    })

    -- Comment
    use({
      "terrortylor/nvim-comment",
      config = function()
        require("nvim_comment").setup()
      end,
    })

    -- Github Theme
    use({
      "projekt0n/github-nvim-theme",
      config = function()
        require("plugins/github_theme")
      end,
    })

    -- Lualine
    use({
      "hoob3rt/lualine.nvim",
      config = function()
        require("plugins/lualine")
      end,
      requires = {
        { "kyazdani42/nvim-web-devicons" },
        { "arkav/lualine-lsp-progress" },
      },
    })

    -- Which Key
    use({
      "folke/which-key.nvim",
      config = function()
        require("plugins/whichkey")
      end,
    })

    -- Autopairs + tags
    use({
      "windwp/nvim-autopairs",
      config = function()
        require("plugins/autopairs")
      end,
      requires = { "windwp/nvim-ts-autotag" },
    })

    -- Telescope
    use({
      "nvim-telescope/telescope.nvim",
      config = function()
        require("plugins/telescope")
      end,
      requires = {
        { "nvim-lua/plenary.nvim" },
        { "kyazdani42/nvim-web-devicons" },
        { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
        { "nvim-telescope/telescope-ui-select.nvim" },
      },
    })

    -- Treesitter
    use({
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
      config = function()
        require("plugins/treesitter")
      end,
      requires = {
        { "nvim-treesitter/playground" },
        { "nvim-treesitter/nvim-treesitter-context" },
      },
    })

    -- CMP
    use({
      "hrsh7th/nvim-cmp",
      config = function()
        require("plugins/cmp")
      end,
      requires = {
        { "hrsh7th/cmp-cmdline" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "onsails/lspkind-nvim" },
        { "L3MON4D3/LuaSnip", requires = { { "saadparwaiz1/cmp_luasnip" } } },
      },
    })

    -- Gitsigns
    use({
      "lewis6991/gitsigns.nvim",
      config = function()
        require("plugins/gitsigns")
      end,
      requires = { { "nvim-lua/plenary.nvim" } },
    })

    -- Diffview
    use({
      "sindrets/diffview.nvim",
      config = function()
        require("plugins/diffview")
      end,
    })

    -- LSP
    use({
      "williamboman/mason.nvim",
      config = function()
        require("plugins/lsp")
      end,
      requires = {
        { "williamboman/mason-lspconfig.nvim" },
        { "neovim/nvim-lspconfig" },
        { "mfussenegger/nvim-dap" },
        { "jose-elias-alvarez/null-ls.nvim" },
        { "jayp0521/mason-null-ls.nvim" },
        { "jayp0521/mason-nvim-dap.nvim" },
        { "folke/lua-dev.nvim" },
      },
    })

    -- Nvim Tree
    use({
      "kyazdani42/nvim-tree.lua",
      config = function()
        require("plugins/nvim_tree")
      end,
      requires = { { "kyazdani42/nvim-web-devicons" } },
    })

    -- ufo folding
    use({
      "kevinhwang91/nvim-ufo",
      config = function()
        require("plugins/ufo")
      end,
      requires = "kevinhwang91/promise-async",
    })

    -- tabbar
    use({
      "romgrk/barbar.nvim",
      config = function()
        require("plugins/barbar")
      end,
      requires = { "kyazdani42/nvim-web-devicons" },
    })

    -- Neotest
    use({
      "nvim-neotest/neotest",
      config = function()
        require("plugins/neotest")
      end,
      requires = {
        { "nvim-lua/plenary.nvim" },
        { "haydenmeade/neotest-jest" },
      },
    })
  end,
  config = require("plugins/packer"),
})

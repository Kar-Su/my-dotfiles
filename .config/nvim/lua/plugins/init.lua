return {

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    lazy = false,
    config = function()
      require "configs.conform"
    end,
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    lazy = false, -- force immediate loading
    -- Still restrict commands if needed by filetype:
    ft = { "markdown" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      -- You can use either mini.nvim or nvim-web-devicons:
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("render-markdown").setup {
        file_types = { "markdown" }, -- ensure this matches your buffers
        log_level = "debug",         -- for more detailed logs
      }
    end,
  },

  -- {
  --   "github/copilot.vim",
  --   lazy = false,
  --   config = function()
  --     -- Mapping tab is already used by NvChad
  --     vim.g.copilot_assume_mapped = true
  --     vim.g.copilot_tab_fallback = ""
  --     -- The mapping is set to other key, see custom/lua/mappings
  --     -- or run <leader>ch to see copilot mapping section
  --   end,
  -- },

  {
    "mattn/emmet-vim",
    lazy = false, -- Ensures Emmet loads on start
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },

  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.chunk"
      --
    end,
  },

  {
    "IogaMaster/neocord",
    event = "VeryLazy",
    config = function()
      require "configs.discord"
    end,
  },

  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    config = function()
      require "configs.inline-diagnostics"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
      },
    },
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    opts = {},
    enabled = false,
  },

  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-dap-python", --optional
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
    },
    lazy = false,
    branch = "regexp", -- This is the regexp branch, use this for the new version
    keys = {
      { ",v", "<cmd>VenvSelect<cr>" },
    },
    opts = require "configs.venv-selector",
  },
}

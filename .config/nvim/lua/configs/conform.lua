local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    python = { "ruff" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    lsp_fallback = true,
  },
}

return options

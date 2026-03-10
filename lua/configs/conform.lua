return {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_fix", "ruff_format" },
    cpp = { "clang_format" },
    c = { "clang_format" },
    sh = { "shfmt" },
    rust = { "rustfmt" },
  },
}

local null_ls = require("null-ls")

local b = null_ls.builtins

null_ls.setup({
  sources = {
    b.formatting.shfmt,
    b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

    -- cpp
    b.formatting.clang_format,
    b.diagnostics.cpplint.with { diagnostics_format = "#{m} [#{c}] " },
    b.formatting.rustfmt,

    --python
    b.diagnostics.flake8,
    b.formatting.black,
  },

  debug = true,
})

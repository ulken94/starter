local M = {}

M.treesitter = {
  ensure_installed = {
    "vim", "lua", "vimdoc",
    "html", "css", "c", "cpp", "python",
    "markdown", "markdown_inline",
  },
  auto_install = true,
}

M.mason = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "stylua",

    -- web
    "css-lsp",
    "html-lsp",
    "typescript-language-server",

    -- python
    "pyright",
    "ruff",

    -- cpp
    "clangd",
    "clang-format",
    "cpplint",

    -- shell
    "shfmt",

    -- rust
    "rustfmt",
  },
}

M.nvterm = {
  terminals = {
    type_opts = {
      float = {
        relative = "editor",
        border = "single",
        row = 0.6,
        col = 0.25,
        width = 0.5,
        height = 0.4,
      },
    },
  },
}

return M

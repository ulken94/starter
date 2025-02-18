local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "c",
    "cpp",
    "python",
  },
}

M.mason = {
  ensure_installed = {
    --lua
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",

    --python
    "flake8",
    "black",
    "pyright",
    "python-lsp-server",

    --cpp
    "clangd",
    "clang-format",
    "cpplint",
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
  }
}

return M

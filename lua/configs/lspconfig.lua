vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

local nvlsp = require("nvchad.configs.lspconfig")

local servers = { "html", "cssls", "clangd", "ts_ls" }

for _, lsp in ipairs(servers) do
  vim.lsp.config[lsp] = {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
  vim.lsp.enable(lsp)
end

vim.lsp.config.pyright = {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  root_markers = { "pyrightconfig.json", ".git", ".venv", "pyproject.toml" },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
      },
    },
  },
}

vim.lsp.config.ruff = {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  root_markers = { "pyproject.toml", ".git", ".venv" },
  settings = {
    args = { "--max-line-length=88" },
  },
}

vim.lsp.enable("pyright")
vim.lsp.enable("ruff")

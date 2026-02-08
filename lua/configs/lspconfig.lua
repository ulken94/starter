-- require("nvchad.configs.lspconfig").defaults()
--
-- local servers = { "html", "cssls", "clangd", "pyright", "ts_ls"}
-- vim.lsp.enable(servers)
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
local nvlsp = require("nvchad.configs.lspconfig")

-- 1. 일반 서버들 설정 (반복문)
local servers = { "html", "cssls", "clangd", "ts_ls" }

for _, lsp in ipairs(servers) do
  -- vim.lsp.config에 설정 테이블을 저장
  vim.lsp.config[lsp] = {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
  -- 서버 활성화
  vim.lsp.enable(lsp)
end

-- 2. Pyright 설정 (개별 설정)
vim.lsp.config.pyright = {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,

  -- [핵심] 루트 디렉토리 찾는 기준 (root_markers 사용)
  -- Neovim 0.11+ 에서는 root_dir 함수 대신 root_markers 리스트를 권장합니다.
  -- 파일이 있는 순서대로 루트를 찾습니다.
  root_markers = { "pyrightconfig.json", ".git", ".venv", "pyproject.toml" },

  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
      }
    }
  }
}

vim.lsp.config.ruff = {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,

  root_markers = { "pyproject.toml", ".git", ".venv" },

  settings = {
    args = { "--max-line-length=88" },
  }
}

-- Pyright 활성화
vim.lsp.enable("pyright")
-- Ruff 활성화
vim.lsp.enable("ruff")
-- read :h vim.lsp.config for changing options of lsp servers 

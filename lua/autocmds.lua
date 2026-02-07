require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = "python",
  callback = function()
    -- 구식 python#GetIndent 대신 Treesitter가 인덴트를 계산하도록 설정
    -- 만약 Treesitter가 설치되어 있다면 이 수식이 인덴트를 담당합니다.
    vim.opt_local.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})

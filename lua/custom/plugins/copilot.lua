-- ~/.config/nvim/lua/custom/plugins/copilot.lua
return {
  {
    "github/copilot.vim",
    branch = "release",
    lazy = false,
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.api.nvim_set_keymap("i", "<C-o>", 'copilot#Accept("\\<CR>")', { silent = true, expr = true, replace_keycodes = false, })
    end,
  },
}


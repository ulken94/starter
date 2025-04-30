-- ~/.config/nvim/lua/custom/plugins/copilot.lua
return {
  {
    "github/copilot.vim",
    branch = "release",
    lazy = false,
  },
  -- {
  --   "zbirenbaum/copilot-cmp",
  --   dependencies = { "zbirenbaum/copilot.lua" },
  --   config = function()
  --     require("copilot_cmp").setup()
  --   end,
  -- }
}


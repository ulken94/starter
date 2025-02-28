local overrides = require "custom.configs.overrides"

return {
  --Override plugin definition options
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({

      })
    end
  },
}


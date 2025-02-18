local overrides = require "custom.configs.overrides"

local plugins {
  --Override plugin definition options
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
}


return {
  -- Theme inspired by Atom
  'navarasu/onedark.nvim',
  priority = 1000,
  config = function()
    require('onedark').setup {
      transparent = true,
      highlights={
        ["@type"] = { fg = require('onedark.palette').dark.orange },
        ["@constructor"] = {fg = require('onedark.palette').dark.orange, fmt = "bold"},
        ["@variable"] = {fg = require('onedark.palette').dark.cyan},
        ["@module"] = {fg = require('onedark.palette').dark.red},
        ["@namespace"] ={fg = require('onedark.palette').dark.red},
        ["@variable.parameter"] = {fg = require('onedark.palette').dark.cyan},
        ["@function.builtin"] = {fg = require('onedark.palette').dark.blue},
        ["@parameter"] = {fg = require('onedark.palette').dark.cyan},
      }

    }
    vim.cmd.colorscheme 'onedark'
  end,
}

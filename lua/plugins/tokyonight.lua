return {
  "folke/tokyonight.nvim",
  priority = 1000,
  lazy = false,
  config = function ()
    require("tokyonight").setup({
      transparent = true,
      on_highlights = function(hl, c)
        hl.Special = { fg = c.magenta }
        hl.Function = { fg = c.yellow }
        hl.Keyword = {fg = c.red }
        hl["@variable.parameter"] = { fg = c.fg } -- For parameters of a function.
        hl.Statement = { link = "Keyword" }
        hl["@variable.parameter.builtin"] = { fg = c.fg }
        hl.Operator = { fg = c.magenta }
        hl["@operator"] = {link = "Operator"}
        hl["@keyword"] = {link = "Keyword"}
        hl.Constant = { fg = c.magenta2 }
      end
    })
    vim.cmd("colorscheme tokyonight-night")
  end
}

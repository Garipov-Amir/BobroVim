return {
  "olivercederborg/poimandres.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("poimandres").setup({
      bold_vert_split = true,
      dim_nc_background = true,
      disable_background = true,
    })
  end,
  init = function()
    vim.cmd("colorscheme poimandres")
  end,
}

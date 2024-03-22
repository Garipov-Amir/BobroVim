return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      
      require('lualine').setup({
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''}, 
        always_divide_middle = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'filename'},
        lualine_c = {'branch', 'diff', 'diagnostics'},
        lualine_x = {'filetype', 'fileformat'},
        lualine_y = {'filesize'},
        lualine_z = {'location'}
      }
    })
    end
}

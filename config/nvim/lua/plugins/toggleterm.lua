-- toggle term
return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
    size = 7,
    open_mapping = [[<leader>tt]],
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = "1",
    start_in_insert = true,
    persist_size = true,
    direction = "float",
    highlights = {
      -- highlights which map to a highlight group name and a table of it's values
      -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
      Normal = {
        guibg = "#0f0f0f",
      },
      NormalFloat = {
        guibg = "#18181a",
      },
      FloatBorder = {
        guifg = "#FFFFFF",
        guibg = "#18181a",
      },
    },
    float_opts = {
      -- The border key is *almost* the same as 'nvim_open_win'
      -- see :h nvim_open_win for details on borders however
      -- the 'curved' border is a custom border type
      -- not natively supported but implemented in this plugin.
      border = "curved",
      -- like `size`, width and height can be a number or function which is passed the current terminal
      winblend = 3,
    },
  }
}

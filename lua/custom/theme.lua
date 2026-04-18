return {
  setup = function()
    require('catppuccin').setup {
      flavour = 'frappe',
    }
    vim.cmd.colorscheme 'catppuccin'
  end,

  -- Solorized-osaka
  -- config = function()
  --   require('solarized-osaka').setup {
  --     style = '',
  --     use_background = true,
  --
  --     transparent = false,
  --     terminal_colors = false,
  --
  --     styles = {
  --       comments = { italic = false },
  --       variables = {},
  --       functons = {},
  --       -- sidebars = 'dark',
  --       -- floats = 'dark',
  --     },
  --
  --     -- sidebars = { 'qf', 'vista_kind', 'terminal', 'packer' },
  --     on_colors = function(colors)
  --       colors.hint = colors.orange
  --       colors.error = '#ff0000'
  --     end,
  --   }
  --   vim.cmd.colorscheme 'solarized-osaka'
  -- end,
  --
  -- For everforest theme
  -- config = function()
  --   vim.g.everforest_background = 'medium'
  --   vim.g.everforest_enable_italic = true
  --   vim.g.everforest_better_performance = 1
  --   vim.cmd.colorscheme 'everforest'
  --
  --   -- Override error colors to be red
  --   vim.api.nvim_set_hl(0, 'Error', { fg = '#ff0000' })
  --   vim.api.nvim_set_hl(0, 'ErrorMsg', { fg = '#ff0000' })
  --   vim.api.nvim_set_hl(0, 'DiagnosticError', { fg = '#ff0000' })
  --   vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { fg = '#ff0000' })
  -- end,
}

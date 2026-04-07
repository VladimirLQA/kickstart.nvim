---@module 'lazy'
---@type LazySpec
return {
  'akinsho/toggleterm.nvim',
  version = '*',
  lazy = false,
  ---@module 'toggleterm'
  ---@type ToggleTermConfig
  opts = {
    open_mapping = [[\]],
    size = 15,
    direction = 'horizontal',
  },
}

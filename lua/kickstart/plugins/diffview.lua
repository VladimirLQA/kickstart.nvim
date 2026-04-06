-- Side-by-side diffs, file history, and merge conflict resolution.
-- This plugin lazy-loads: it only activates when you run a Diffview command
-- or press one of the keymaps below.

---@module 'lazy'
---@type LazySpec
return {
  'sindrets/diffview.nvim',

  -- Lazy-load on these commands. Until you run one, the plugin won't load.
  -- This keeps Neovim startup fast.
  cmd = {
    'DiffviewOpen', -- Open diff view of all current changes
    'DiffviewFileHistory', -- Browse commit history
    'DiffviewClose', -- Close the diff view
  },

  -- Lazy-load on these keymaps too. Pressing any of these will load the plugin
  -- first, then execute the mapping.
  keys = {
    -- Open diff of all uncommitted changes (like "git diff" in a split view)
    { '<leader>gd', '<cmd>DiffviewOpen<CR>', desc = '[G]it [D]iff view' },

    -- File history for the current file (every commit that touched this file)
    { '<leader>gf', '<cmd>DiffviewFileHistory %<CR>', desc = '[G]it [F]ile history' },

    -- File history for the entire repo
    { '<leader>gl', '<cmd>DiffviewFileHistory<CR>', desc = '[G]it [L]og (all files)' },

    -- Close the diff view
    { '<leader>gx', '<cmd>DiffviewClose<CR>', desc = '[G]it diff close' },
  },

  -- config runs once the plugin loads. diffview works with zero config,
  -- but we call setup() to be explicit and leave room for future tweaks.
  config = function()
    require('diffview').setup {}
  end,
}

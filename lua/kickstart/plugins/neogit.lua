-- Full git interface inside Neovim (like Magit for Emacs).
-- Stage, commit, stash, push, pull, rebase — all from a single buffer.
-- Lazy-loads on :Neogit command or keymaps below.

---@module 'lazy'
---@type LazySpec
return {
  'NeogitOrg/neogit',

  -- plenary is the only hard dependency.
  -- diffview and telescope are already in your config —
  -- neogit auto-detects and uses them.
  dependencies = {
    'nvim-lua/plenary.nvim',
  },

  cmd = { 'Neogit' },

  keys = {
    -- Open the main neogit status buffer (your git home screen)
    { '<leader>gg', '<cmd>Neogit<CR>', desc = '[G]it Neo[g]it status' },

    -- Open neogit commit popup directly
    { '<leader>gc', '<cmd>Neogit commit<CR>', desc = '[G]it [C]ommit' },

    -- Open neogit pull popup
    { '<leader>gp', '<cmd>Neogit pull<CR>', desc = '[G]it [P]ull' },

    -- Open neogit push popup
    { '<leader>gP', '<cmd>Neogit push<CR>', desc = '[G]it [P]ush' },

    -- Open neogit stash popup
    { '<leader>gS', '<cmd>Neogit stash<CR>', desc = '[G]it [S]tash' },
  },

  config = function()
    local neogit = require('neogit')
    neogit.setup {
      -- Use diffview for side-by-side diffs instead of built-in viewer
      integrations = {
        diffview = true,
        telescope = true,
      },
      -- Discard is mapped via keybinding with confirmation instead
      mappings = {},
    }

    -- Add keybinding for discard with confirmation in status buffer
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'NeogitStatus',
      callback = function()
        vim.keymap.set('n', 'x', function()
          local choice = vim.fn.confirm('Discard changes? This cannot be undone.', '&Yes\n&No', 2)
          if choice == 1 then
            vim.cmd('NeogitResetFile')
          end
        end, { buffer = true, noremap = true })
      end,
    })
  end,
}

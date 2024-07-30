-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree toggle<CR>', desc = 'NeoTree reveal' },
  },
  opts = {
    filesystem = {
      window = {
        position = 'float',
        selector = true,
        source_selector = {
          winbar = true,
          statusline = true,
        },
        mapping_options = {
          noremap = false,
        },
        mappings = {
          ['\\'] = 'close_window',
          ['e'] = 'move_cursor_down',
          ['<space>'] = { 'toggle_node', nowait = false },
        },
      },
    },
  },
}

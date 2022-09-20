----------------------------------
-- another nvimtree file explorer
-- by arvo
----------------------------------

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
      disable_netrw = true,
      hijack_netrw = true,
      view = {
        adaptive_size = true,
        side = "left",
        mappings = {
          list = {
            { key = "v",                          action = "vsplit" },
            { key = "s",                          action = "split" },
            { key = "t",                          action = "tabnew" },
          },
        },
      },
      renderer = {
        highlight_git = true,
        highlight_opened_files = "name",
        indent_markers = {
          enable = true,
        },
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        debounce_delay = 300,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      filters = {
        dotfiles = true,
      }
})


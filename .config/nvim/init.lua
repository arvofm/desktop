---------------------------
-- a neat neovim config
-- by arvo
---------------------------

-- colorscheme (gruvbox-material / nightfox-duskfox / rosepine)
require('gruvbox-material')

-- better syntax highlighting
require('treesitter')

-- bottom status line
require('lualine-status')

-- side panel file explorer
require('nvimtree-explorer')

-- colorize colors
require('colorizecolors')

-- better tabs
require('barbartabs')

-- html / css support
require('emmethtml')

-- IDE stuff
require('lsp')

-- globals
require('plugins')
require('keybinds')
require('settings')

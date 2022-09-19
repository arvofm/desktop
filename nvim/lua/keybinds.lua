---------------------------
-- vim legacy keybindings
-- by arvo
---------------------------

local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true, noremap = true })
end

-- why would i use single
map('i', '"', '""<ESC>i')
map('i', '\'', '\'\'<ESC>i')
map('i', '`', '``<ESC>i')
map('i', '(', '()<ESC>i')
map('i', '[', '[]<ESC>i')
map('i', '{', '{}<ESC>i')


-- tabs navigation
map('n', '<A-Down>', '<CMD>wincmd J<CR>')
map('n', '<A-Left>', '<CMD>wincmd H<CR>')
map('n', '<A-Right>', '<CMD>wincmd L<CR>')
map('n', '<A-Up>', '<CMD>wincmd K<CR>')
map('n', '<A-h>', '<CMD>wincmd h<CR>')
map('n', '<A-j>', '<CMD>wincmd j<CR>')
map('n', '<A-k>', '<CMD>wincmd k<CR>')
map('n', '<A-l>', '<CMD>wincmd l<CR>')

-- file explorer
map('n', '\\f', '<CMD>NvimTreeToggle<CR>')

-- retab in visual
map('v', '<', '<gv')
map('v', '>', '>gv')

-- move text up and down
map('n', '<A-C-j>', '<S-v>:m .+1<CR>')
map('n', '<A-C-k>', '<S-v>:m .-2<CR>')

-- prevent visual paste backdrop
map('v', 'p', '"_dP')

-- misc
map('i', '<C-p>', '<C-x><C-i>')
map('i', '<Del>', '<C-w>')
map('n', '<C-s>', '<CMD>w<CR>')
map('n', 'W', '$')



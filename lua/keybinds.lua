local set = vim.keymap.set

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- disable the fucking annoying Q macro mapping
set('n', 'q:', '<nop>', { noremap = true, silent = true })
-- Diagnostic keymaps
set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- Neo-Tree open
set('n', '<leader>e', function()
  vim.cmd 'Neotree toggle'
end, { desc = '[E] Toggle Neo-Tree' })
-- -- trigger lsp.CodeAction
set('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true, desc = '[C]ode [A]ction' })
-- custom keybinds

-- Open files/etc
-- #open $MYVIMRC
set('n', '<leader>oss', ':e $MYVIMRC<CR>', { desc = '[O]pen vimrc [S]ettings' })
set('n', '<leader>osk', ':e ~/.config/nvim/lua/keybinds.lua<CR>', { desc = '[O]pen [S]ettings [K]eybinds' })
-- #insert new line in normal mode
-- below
set('n', '<CR>', 'm`o<Esc>``')
set('n', '<A-j>', 'm`o<Esc>``')

-- above
set('n', '<A-k>', 'm`O<Esc>``')
set('n', '<A-CR>', 'm`O<Esc>``')

-- #cloak toggle
-- :CloakDisable, :CloakEnable, :CloakToggle and :CloakPreviewLine
set('n', '<leader>tc', ':CloakToggle<CR>', { desc = '[T]oggle [C]loak' })
set('n', '<leader>tp', ':CloakPreviewLine<CR>', { desc = '[T]oggle [P]review under cursor (cloak)' })
-- #harpoon keymaps
set('n', '<leader>Hh', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { desc = 'toggle [h]arpoon quick menu' })
set('n', '<leader>HH', ':lua require("harpoon.mark").add_file()<CR>', { desc = 'add file to [H]arpoon' })
set('n', '<leader>H1', ':lua require("harpoon.ui").nav_file(1)<CR>', { desc = 'switch to to Harpoon file[1]' })
set('n', '<leader>H2', ':lua require("harpoon.ui").nav_file(2)<CR>', { desc = 'switch to to Harpoon file[2]' })
set('n', '<leader>H3', ':lua require("harpoon.ui").nav_file(3)<CR>', { desc = 'switch to to Harpoon file[3]' })
set('n', '<leader>H4', ':lua require("harpoon.ui").nav_file(4)<CR>', { desc = 'switch to to Harpoon file[4]' })
set('n', '<leader>H5', ':lua require("harpoon.ui").nav_file(5)<CR>', { desc = 'switch to to Harpoon file[5]' })
-- #trouble, errors and shit
set('n', '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', { desc = 'Diagnostics (Trouble)' })
set('n', '<leader>xX', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', { desc = 'Buffer Diagnostics (Trouble)' })
set('n', '<leader>cs', '<cmd>Trouble symbols toggle focus=false<cr>', { desc = 'Symbols (Trouble)' })
set('n', '<leader>cl', '<cmd>Trouble lsp toggle focus=false win.position=right<cr>', { desc = 'LSP Definitions / references / ... (Trouble)' })
set('n', '<leader>xL', '<cmd>Trouble loclist toggle<cr>', { desc = 'Location List (Trouble)' })
set('n', '<leader>xQ', '<cmd>Trouble qflist toggle<cr>', { desc = 'Quickfix List (Trouble)' })
-- -- #toggle Screenkey
-- set('n', '<leader>ts', ':Screenkey<CR>', { desc = '[T]oggle [S]creenkey' })
-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })

set({ 'n', 'v' }, '<leader>cx', '<cmd>.lua<CR>', { desc = 'Execute the current line' })
set({ 'n', 'v' }, '<leader>cX', '<cmd>source %<CR>', { desc = 'Execute the current file' })

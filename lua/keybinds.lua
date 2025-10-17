-- Open files/etc
-- #open $MYVIMRC
vim.keymap.set('n', '<leader>oss', ':e $MYVIMRC<CR>', { desc = '[O]pen vimrc [S]ettings' })
vim.keymap.set('n', '<leader>osk', ':e ~/.config/nvim/lua/keybinds.lua<CR>', { desc = '[O]pen [S]ettings [K]eybinds' })
-- #insert new line in normal mode
-- below
vim.keymap.set('n', '<CR>', 'm`o<Esc>``')
vim.keymap.set('n', '<A-j>', 'm`o<Esc>``')

-- above
vim.keymap.set('n', '<A-k>', 'm`O<Esc>``')
vim.keymap.set('n', '<A-CR>', 'm`O<Esc>``')

-- #cloak toggle
-- :CloakDisable, :CloakEnable, :CloakToggle and :CloakPreviewLine
vim.keymap.set('n', '<leader>tc', ':CloakToggle<CR>', { desc = '[T]oggle [C]loak' })
vim.keymap.set('n', '<leader>tp', ':CloakPreviewLine<CR>', { desc = '[T]oggle [P]review under cursor (cloak)' })
-- #harpoon keymaps
vim.keymap.set('n', '<leader>Hh', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { desc = 'toggle [h]arpoon quick menu' })
vim.keymap.set('n', '<leader>HH', ':lua require("harpoon.mark").add_file()<CR>', { desc = 'add file to [H]arpoon' })
vim.keymap.set('n', '<leader>H1', ':lua require("harpoon.ui").nav_file(1)<CR>', { desc = 'switch to to Harpoon file[1]' })
vim.keymap.set('n', '<leader>H2', ':lua require("harpoon.ui").nav_file(2)<CR>', { desc = 'switch to to Harpoon file[2]' })
vim.keymap.set('n', '<leader>H3', ':lua require("harpoon.ui").nav_file(3)<CR>', { desc = 'switch to to Harpoon file[3]' })
vim.keymap.set('n', '<leader>H4', ':lua require("harpoon.ui").nav_file(4)<CR>', { desc = 'switch to to Harpoon file[4]' })
vim.keymap.set('n', '<leader>H5', ':lua require("harpoon.ui").nav_file(5)<CR>', { desc = 'switch to to Harpoon file[5]' })
-- #trouble, errors and shit
vim.keymap.set('n', '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', { desc = 'Diagnostics (Trouble)' })
vim.keymap.set('n', '<leader>xX', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', { desc = 'Buffer Diagnostics (Trouble)' })
vim.keymap.set('n', '<leader>cs', '<cmd>Trouble symbols toggle focus=false<cr>', { desc = 'Symbols (Trouble)' })
vim.keymap.set('n', '<leader>cl', '<cmd>Trouble lsp toggle focus=false win.position=right<cr>', { desc = 'LSP Definitions / references / ... (Trouble)' })
vim.keymap.set('n', '<leader>xL', '<cmd>Trouble loclist toggle<cr>', { desc = 'Location List (Trouble)' })
vim.keymap.set('n', '<leader>xQ', '<cmd>Trouble qflist toggle<cr>', { desc = 'Quickfix List (Trouble)' })
-- #toggle Screenkey
vim.keymap.set('n', '<leader>ts', ':Screenkey<CR>', { desc = '[T]oggle [S]creenkey' })

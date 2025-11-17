local keybinds = {
  -- example
  -- plugin_name = {{ key = '<leader>', action = function() print 'im a fun()' end, mode = 'n', opts = { desc = 'lalal', }, },},
  telescope = {
    { 'n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' } },
    { 'n', '<leader>sk', require('telescope.builtin').keymaps, { desc = '[S]earch [K]eymaps' } },
    { 'n', '<leader><leader>', require('telescope.builtin').find_files, { desc = '[S]earch [ ] files' } },
    { 'n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' } },
    { 'n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' } },
    { 'n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' } },
    { 'n', '<leader>s.', require('telescope.builtin').oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' } },
-- stylua: ignore
    { 'n', '<leader>/', function() require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown { winblend = 10, previewer = false }) end, { desc = '[/] Fuzzily search in current buffer' }, },
-- stylua: ignore
    { 'n', '<leader>sn', function() require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' } end, { desc = '[S]earch [N]eovim files' }, },
    -- {'n', '<leader><leader>', require ('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' }},
  },
-- stylua: ignore
  snacks = {
    { '', '<leader>,', function() require(Snacks).picker.buffers() end, { desc = 'Buffers' }, },
    { '', '<leader>:', function() Snacks.picker.command_history() end, { desc = 'Command History' }, },
    { '', '<leader>n', function() Snacks.picker.notifications() end, { desc = 'Notification History' }, },
    { '', '<leader>gl', function() Snacks.picker.git_log() end, { desc = 'Git Log' }, },
    { '', '<leader>gL', function() Snacks.picker.git_log_line() end, { desc = 'Git Log Line' }, },
    { '', '<leader>gs', function() Snacks.picker.git_status() end, { desc = 'Git Status' }, },
    { '', '<leader>gd', function() Snacks.picker.git_diff() end, { desc = 'Git Diff (Hunks)' }, },
    { '', '<leader>s"', function() Snacks.picker.registers() end, { desc = 'Registers' }, },
    { '', '<leader>sd', function() Snacks.picker.diagnostics() end, { desc = 'Diagnostics' }, },
    { '', 'gd', function() Snacks.picker.lsp_definitions() end, { desc = 'Goto Definition' }, },
    { '', 'gai', function() Snacks.picker.lsp_incoming_calls() end, { desc = 'C[a]lls Incoming' }, },
    { '', 'gao', function() Snacks.picker.lsp_outgoing_calls() end, { desc = 'C[a]lls Outgoing' }, },
    { '', '<leader>n', function() Snacks.notifier.show_history() end, { desc = 'Notification History' }, },
    { { 'n', 'v' }, '<leader>gB', function() Snacks.gitbrowse() end, { desc = 'Git Browse' }, },
    { '', '<leader>un', function() Snacks.notifier.hide() end, { desc = 'Dismiss All Notifications' }, },
    { '', '<c-/>', function() Snacks.terminal() end, { desc = 'Toggle Terminal' }, },
    { { 'n', 't' }, ']]', function() Snacks.words.jump(vim.v.count1) end, { desc = 'Next Reference' }, },
    { { 'n', 't' }, '[[', function() Snacks.words.jump(-vim.v.count1) end, { desc = 'Prev Reference' }, },
  },
  lsp = {
    { '', 'grn', vim.lsp.buf.rename, { desc = '[R]e[n]ame' } },
    { { 'n', 'x' }, 'gra', vim.lsp.buf.code_action, { desc = '[G]oto Code [A]ction' } },
    { '', 'grr', require('telescope.builtin').lsp_references, { desc = '[G]oto [R]eferences' } },
    { '', 'gri', require('telescope.builtin').lsp_implementations, { desc = '[G]oto [I]mplementation' } },
    { '', 'grd', require('telescope.builtin').lsp_definitions, { desc = '[G]oto [D]efinition' } },
    { '', 'grD', vim.lsp.buf.declaration, { desc = '[G]oto [D]eclaration' } },
    { '', 'gO', require('telescope.builtin').lsp_document_symbols, { desc = 'Open Document Symbols' } },
    { '', 'gW', require('telescope.builtin').lsp_dynamic_workspace_symbols, { desc = 'Open Workspace Symbols' } },
    { '', 'grt', require('telescope.builtin').lsp_type_definitions, { desc = '[G]oto [T]ype Definition' } },
-- stylua: ignore
    { '', '<leader>th', function() local ih = vim.lsp.inlay_hint ih.enable(not ih.is_enabled { bufnr = vim.api.nvim_get_current_buf()}) end, { desc = '[T]oggle Inlay [H]ints' }, },
-- stylua: ignore
    { '', '<leader>tt', function() local c = vim.diagnostic.config() vim.diagnostic.config { virtual_text = not c.virtual_text } end, { desc = '[T]oggle virtual [T]ext' }, },
-- stylua: ignore
    { '', '<leader>tv', function() local virtLines = vim.diagnostic.config().virtual_lines if virtLines then virtLines = false else virtLines = { current_line = true } end vim.diagnostic.config { virtual_lines = virtLines } end, { desc = '[T]oggle [V]irtual lines' }, },
  },
-- stylua: ignore
  flash = {
    { {"n","x","o"}, "zk",  function () require("flash").jump() end, desc = "Flash" },
    { {"n","x","o"}, "Zk",  function () require("flash").treesitter() end, desc = "Flash Treesitter" },
    { {"o"} ,"r", function () require("flash").remote() end, desc = "Remote Flash" },
    { {"x","o"}, "R",  function () require("flash").tresitter_search() end, desc = "Treesitter search (flash)" },
    { {"c"}, "<c-s>", function () require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
  conform = {
-- stylua: ignore
    { "", '<leader>cf', function() require('conform').format { async = true, lsp_format = 'fallback' } end, {desc = '[C]ode [F]ormat buffer'},},
  },
  screenkey = {
-- stylua: ignore
    { 'n', '<leader>ts', require('screenkey').toggle, { desc = '[T]oggle [S]creenkey' }},
  },
  custom = {
-- stylua: ignore
    { 'n', '<leader>gg', function()  require('snacks').lazygit()  require('screenkey').turn_off()end, { desc = 'Lazy[G]it + screenkey_off' }},
  },
  lua = {
    { 'v', '<leader>xX', ':lua<CR>', { desc = 'Execute the current selection' } },
    { 'n', '<leader>xx', ':.lua<CR>', { desc = 'Execute the current line' } },
    { 'n', '<leader>xS', '<cmd>source %<CR>', { desc = '[S]ource lua file' } },
  },
  movement = {
    { 'n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' } },
    { 'n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' } },
    { 'n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' } },
    { 'n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' } },
    { 'n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' } },
    { 'n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' } },
    { 'n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' } },
    { 'n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' } },
    { 'n', '<down>', '<cmd>echo "Use j to move!!"<CR>' },
    { 'n', '<up>', '<cmd>echo "Use k to move!!"<CR>' },
    { 'n', '<right>', '<cmd>echo "Use l to move!!"<CR>' },
    { 'n', '<left>', '<cmd>echo "Use h to move!!"<CR>' },
  },
-- stylua: ignore
  harpoon = {
    { 'n', '<leader>h5',function() require('harpoon.ui').nav_file(5) end, { desc = 'switch to to Harpoon file[5]' } },
    { 'n', '<leader>h4',function() require('harpoon.ui').nav_file(4) end, { desc = 'switch to to Harpoon file[4]' } },
    { 'n', '<leader>h3',function() require('harpoon.ui').nav_file(3) end, { desc = 'switch to to Harpoon file[3]' } },
    { 'n', '<leader>h2',function() require('harpoon.ui').nav_file(2) end, { desc = 'switch to to Harpoon file[2]' } },
    { 'n', '<leader>h1',function() require('harpoon.ui').nav_file(1) end, { desc = 'switch to to Harpoon file[1]' } },
    { 'n', '<leader>hH',function() require('harpoon.mark').add_file() end, { desc = 'add file to [H]arpoon' } },
    { 'n', '<leader>hh',function() require('harpoon.ui').toggle_quick_menu() end, { desc = 'toggle [h]arpoon quick menu' } },
  },
  global = {
    { 't', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' } },
    { 'n', '<leader>xQ', '<cmd>Trouble qflist toggle<cr>', { desc = 'Quickfix List (Trouble)' } },
    { 'n', '<leader>xL', '<cmd>Trouble loclist toggle<cr>', { desc = 'Location List (Trouble)' } },
    { 'n', '<leader>cl', '<cmd>Trouble lsp toggle focus=false win.position=right<cr>', { desc = 'LSP Definitions / references / ... (Trouble)' } },
    { 'n', '<leader>cs', '<cmd>Trouble symbols toggle focus=false<cr>', { desc = 'Symbols (Trouble)' } },
    { 'n', '<leader>cD', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', { desc = 'Buffer Diagnostics (Trouble)' } },
    { 'n', '<leader>cd', '<cmd>Trouble diagnostics toggle<cr>', { desc = 'Diagnostics (Trouble)' } },
    { 'n', '<leader>tp', ':CloakPreviewLine<CR>', { desc = '[T]oggle [P]review under cursor (cloak)' } },
    { 'n', '<leader>tc', ':CloakToggle<CR>', { desc = '[T]oggle [C]loak' } },
    { 'n', '<A-CR>', 'm`O<Esc>``' },
    { 'n', '<A-k>', 'm`O<Esc>``' },
    { 'n', '<A-j>', 'm`o<Esc>``' },
    { 'n', '<CR>', 'm`o<Esc>``' },
    { 'n', '<leader>osk', ':e ~/.config/nvim/lua/keybinds.lua<CR>', { desc = '[O]pen [S]ettings [K]eybinds' } },
    { 'n', '<leader>oss', ':e $MYVIMRC<CR>', { desc = '[O]pen vimrc [S]ettings' } },
    { 'n', '<Esc>', '<cmd>nohlsearch<CR>' },
-- stylua: ignore
    { 'n','<leader>q',vim.diagnostic.setloclist,{ desc = 'Open diagnostic [Q]uickfix list' },},
-- stylua: ignore
    { 'n', '<leader>e', function()  vim.cmd 'Neotree toggle' end, { desc = '[E] Toggle Neo-Tree' }},
-- stylua: ignore
    { 'n', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true, desc = '[C]ode [A]ction' }},
  },
}

local function set_keybinds()
  local str = 'setting keybinds for: '
  for plugin, binds in pairs(keybinds) do
    for _, bind in ipairs(binds) do
      vim.keymap.set(bind[1], bind[2], bind[3], bind[4] or {})
    end
    str = str .. plugin .. ' x' .. tostring(#binds) .. ', '
  end
  print(str)
end
set_keybinds()

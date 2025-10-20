opts = {
  win_opts = {
    width = 30,
    height = 3,
    row = vim.o.lines - 4,
    col = vim.o.columns / 2 + 15,
    anchor = 'NE',
    border = 'none',
    title = 'Screenkeys123',
    style = 'minimal',
    -----
    relative = 'editor',
    focusable = false,
    noautocmd = true,
  },
  hl_groups = {
    ['screenkey.hl.key'] = { link = 'Normal' },
    ['screenkey.hl.map'] = { link = 'Normal' },
    ['screenkey.hl.sep'] = { link = 'Normal' },
  },
  compress_after = 3,
  clear_after = 10,
  emit_events = true,
  disable = {
    filetypes = {},
    buftypes = {},
    modes = {},
  },
  show_leader = true,
  group_mappings = true,
  display_infront = { '' },
  display_behind = {},
  filter = function(keys)
    return keys
  end,
  colorize = function(keys)
    return keys
  end,
  separator = ' ',
  keys = {
    ['<TAB>'] = '󰌒',
    ['<CR>'] = '󰌑',
    ['<ESC>'] = 'Esc',
    ['<SPACE>'] = '␣',
    ['<BS>'] = '󰌥',
    ['<DEL>'] = 'Del',
    ['<LEFT>'] = '',
    ['<RIGHT>'] = '',
    ['<UP>'] = '',
    ['<DOWN>'] = '',
    ['<HOME>'] = 'Home',
    ['<END>'] = 'End',
    ['<PAGEUP>'] = 'PgUp',
    ['<PAGEDOWN>'] = 'PgDn',
    ['<INSERT>'] = 'Ins',
    ['<F1>'] = '󱊫',
    ['<F2>'] = '󱊬',
    ['<F3>'] = '󱊭',
    ['<F4>'] = '󱊮',
    ['<F5>'] = '󱊯',
    ['<F6>'] = '󱊰',
    ['<F7>'] = '󱊱',
    ['<F8>'] = '󱊲',
    ['<F9>'] = '󱊳',
    ['<F10>'] = '󱊴',
    ['<F11>'] = '󱊵',
    ['<F12>'] = '󱊶',
    ['CTRL'] = 'Ctrl',
    ['ALT'] = 'Alt',
    ['SUPER'] = '󰘳',
    ['<leader>'] = '<leader>',
  },
  notify_method = 'echo',
  log = {
    min_level = vim.log.levels.OFF,
    filepath = vim.fn.stdpath 'data' .. '/screenkey_log',
  },
}
return {
  'NStefan002/screenkey.nvim',
  lazy = false,
  opts = {},
  config = function()
    -- #toggle Screenkey
    vim.keymap.set('n', '<leader>ts', ':Screenkey<CR>', { desc = '[T]oggle [S]creenkey' })
    require('screenkey').setup(opts)
    require('screenkey').toggle()
  end,
}

return {
  'NStefan002/screenkey.nvim',
  lazy = false,
  opts = {
    compress_after = 3,
    clear_after = 10,
    win_opts = {
      width = 30,
      height = 1,
      row = vim.o.lines - 4,
      col = vim.o.columns / 2 + 15,
      anchor = 'NE',
      border = 'single',
      title = 'Screenkeys',
    },
  },
}

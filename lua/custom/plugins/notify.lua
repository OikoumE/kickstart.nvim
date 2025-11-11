return {
  'rcarriga/nvim-notify',

  opts = {
    function()
      require('notify').setup { background_colour = '#000000' }
      vim.notify = require 'notify'
    end,
    on_open = function(win)
      vim.api.nvim_win_set_config(win, {

        focusable = false,
        style = 'minimal',
        border = 'none',
      })
    end,
  },
}

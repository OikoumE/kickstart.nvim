return {

  'folke/flash.nvim',
  event = 'VeryLazy',
  opts = {},
-- stylua: ignore
keys = {
    { "zk", mode={"n","x","o"}, function () require("flash").jump() end, desc = "Flash" },
    { "Zk", mode={"n","x","o"}, function () require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode={"o"} , function () require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode={"x","o"}, function () require("flash").tresitter_search() end, desc = "Treesitter search (flash)" },
   { "<c-s>", mode={"c"}, function () require("flash").toggle() end, desc = "Toggle Flash Search" },

}
,
}

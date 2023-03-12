
return {
  "stevearc/dressing.nvim",
  event = "VeryLazy",
  opts = {
    input = {
      enabled = true
    },
  },
  config = function ()
    require("dressing").setup({opts})
  end
}

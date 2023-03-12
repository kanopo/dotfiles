return {
  "j-hui/fidget.nvim",
  event = "VeryLazy",
  opts = {
    text = {
      spinner = "moon",
    },
  },
  config = function()
    require("fidget").setup({opts})
  end,
}

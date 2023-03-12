return {
  "j-hui/fidget.nvim",
  opts = {
    text = {
      spinner = "moon",
    },
  },
  config = function()
    require("fidget").setup({opts})
  end,
}

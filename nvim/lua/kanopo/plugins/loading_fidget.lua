return {
  "j-hui/fidget.nvim",
  event = "VeryLazy",
  config = function()
    require("fidget").setup({
      text = {
        spinner = "moon",
      },
    })
  end,
}

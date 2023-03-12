
return {
  "stevearc/dressing.nvim",
  opts = {
    input = {
      enabled = true
    },
  },
  config = function ()
    require("dressing").setup({opts})
  end
}

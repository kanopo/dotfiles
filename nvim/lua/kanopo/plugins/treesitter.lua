return {
  {
    "nvim-treesitter/nvim-treesitter",
    build= ":TSUpdate",
    event = {"BufReadPost", "BufNewFile"},
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    keys = {},
    opts = {
      highlight = {enable = true},
      indent = {enable = true, disable = {"python"}},
      ensure_installed = {
        "help",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "python",
        "tsx",
      },
    },
    config = function()
      require("nvim-treesitter.configs").setup({opts})
    end,
  }
}

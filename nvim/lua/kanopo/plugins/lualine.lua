local M = {}

M = {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "kyazdani42/nvim-web-devicons",
    },
    opts = {
        options = {
            icons_enabled = false,
            theme = "gruvbox",
        },
    }
}

return M

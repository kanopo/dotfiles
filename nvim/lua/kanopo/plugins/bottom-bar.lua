-- return {
--     "tjdevries/express_line.nvim",
--     dependencies = {
--         "nvim-lua/plenary.nvim"
--     },
--     config = true,
-- }

return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "ellisonleao/gruvbox.nvim",
    },
    config = function()
        local theme = require("gruvbox")
        require("lualine").setup({
            theme = theme,
        })
    end,
}

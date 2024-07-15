return {
    "romgrk/barbar.nvim",
    dependencies = {
        "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
        "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    config = function()
        require("barbar").setup({})
        vim.keymap.set("n", "<C-h>", "<cmd>BufferPrevious<CR>", {
            desc = "Move to previous buffer",
        })

        vim.keymap.set("n", "<C-l>", "<cmd>BufferNext<CR>", {
            desc = "Move to next buffer",
        })

        vim.keymap.set("n", "<C-w>", "<cmd>BufferClose<CR>", {
            desc = "Close tab",
        })
    end,
    version = "^1.0.0",
}

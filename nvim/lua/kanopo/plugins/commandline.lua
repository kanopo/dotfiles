return {
    "VonHeikemen/fine-cmdline.nvim",
    dependencies = {
        { "MunifTanjim/nui.nvim" },
    },

    config = function()
        vim.o.cmdheight = 0
        vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })
        require("fine-cmdline").setup({})
    end,
}

return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            lazy = true,
        },
    },
    config = function()
        require("telescope").setup({
            pickers = {
                live_grep = {
                    theme = "dropdown",
                },
                grep_string = {
                    theme = "dropdown",
                },
                find_files = {
                    theme = "dropdown",
                },
                buffers = {
                	theme = "dropdown",
                },
            },
            extensions = {
                fxf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                },
            },
        })
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>sf", builtin.find_files, { silent = true, desc = "[S]earch [F]iles" })
        vim.keymap.set("n", "<leader>sg", builtin.live_grep, { silent = true, desc = "[S]earch [G]rep" })
        vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { silent = true, desc = "[S]earch [D]iagnostics" })
    end,
}

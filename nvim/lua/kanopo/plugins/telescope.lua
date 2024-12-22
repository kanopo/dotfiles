return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
        }
    },
    config = function()
        require('telescope').setup {
            pickers = {
                find_files = {
                    hidden = true,
                    prompt_prefix = "🔍 ",
                },
                live_grep = {
                    hidden = true,
                    prompt_prefix = "🔍 ",
                },
            },
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "ignore_case",
                }
            }
        }
        require('telescope').load_extension('fzf')
    end,
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>",  desc = "[F]ind [F]iles" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>",   desc = "[F]ind [H]elp" },
        { "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "[F]ind [D]iadgnostics" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>",   desc = "[F]ind [G]rep" },
    }
}

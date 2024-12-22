return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        signs = true,
        keywords = {
            TODO = { icon = "🤨", color = "info" },
            WIP = { icon = "🥵", color = "warning" },
            ERR = { icon = "🤬", color = "error" },
        },
    }
}

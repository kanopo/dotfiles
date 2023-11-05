local M = {
    "numToStr/Comment.nvim",
    keys = {
        -- {
        --     'gc',
        --     mode = 'x',
        --     '<Plug>(comment_toggle_linewise_visual)'
        -- },
        -- {
        --     'gc',
        --     mode = 'n',
        --     '<Plug>(comment_toggle_linewise_visual)'
        -- },
        {
            'gc',
            mode = 'v',
            '<Plug>(comment_toggle_linewise_visual)'
        },
    },
    opts = {
        mappings = {
            basic = false,
            extra = false,
        },
    },
}

return M

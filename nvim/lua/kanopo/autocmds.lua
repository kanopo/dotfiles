-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = "*",
})

-- Custom mappings and settings for specific file types
vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "netrw",
        "Jaq",
        "qf",
        "git",
        "help",
        "man",
        "lspinfo",
        "spectre_panel",
        "lir",
        "DressingSelect",
        "tsplayground",
        "",
    },
    callback = function()
        -- Close buffer with 'q' in these specific filetypes
        vim.cmd([[
                nnoremap <silent> <buffer> q :close<CR>
                set nobuflisted
        ]])
    end,
})

-- Remove certain format options when entering a buffer window
vim.api.nvim_create_autocmd("BufWinEnter", {
    callback = function()
        -- Removes 'c', 'r', and 'o' from formatoptions
        -- 'c' - auto-wrap comments, 'r' - continue comments, 'o' - O command auto-comments
        vim.cmd("set formatoptions-=cro")
    end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
    callback = function()
        local ft = vim.bo.filetype
        if ft ~= "commit" and ft ~= "rebase" then
            local last_pos = vim.fn.line("'\"")
            if last_pos > 1 and last_pos <= vim.fn.line("$") then
                vim.cmd('normal! g`"')
            end
        end
    end,
})


-- Step 1: Define the fallback Format command that is always present
vim.api.nvim_create_user_command("Format", function()
    -- Fallback formatting: convert to Unix line endings and re-indent
    vim.bo.fileformat = "dos"
    -- vim.cmd("normal! gg=G") -- Optional: re-indent the entire file
    print("Fallback: Converted to Unix line endings and formatted")
end, { desc = "Fallback format: Convert to Unix format and re-indent" })

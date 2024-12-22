-- autoformat on save file
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client then return end

        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = args.buf,
                callback = function()
                    vim.lsp.buf.format({
                        bufnr = args.buf,
                        id = client.id
                    })
                end
            })
        end
    end
})

-- Highlight yanked text
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = "*",
})


-- Go to last cursor position when opening a file
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

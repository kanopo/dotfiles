local treesiter_ok, treesitter = pcall(require, "nvim-treesitter.configs")

if not treesiter_ok then
	print("Treesitter error")
	return
end

treesitter.setup({
	ensure_installed = {
		"lua",
		"python",
		"markdown",
		"rust",
		"help",
		"typescript",
    "css",
    "html",
    "json",
    "java"
	},

	sync_install = false,

	auto_install = true,

	highlight = {
		enable = true,
	},
})

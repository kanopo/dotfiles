local treesitter_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_ok then
	print("Treesitter erro")
end

treesitter.setup({
	ensure_installed = {
		"lua",
		"python",
    "markdown",
    "json",
    "help",
    "org",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
    disable = {
      "org",
    },
    additional_vim_regex_highlighting = {
      "org",
    }
	},
})

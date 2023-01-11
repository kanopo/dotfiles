local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
	print("ERROR gitsigns")
	return
end

gitsigns.setup({
	signs = {
		add = { text = "+" },
		change = { text = "~" },
		delete = { text = "_" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
	},
})

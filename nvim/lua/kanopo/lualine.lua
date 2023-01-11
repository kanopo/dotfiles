
local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	print("ERROR lualine")
	return
end

local _ = require("lualine.themes.gruvbox")

lualine.setup({
	options = {
		theme = "gruvbox",
	},
})

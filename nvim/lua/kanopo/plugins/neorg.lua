local neorg_ok, neorg = pcall(require, "neorg")
if not neorg_ok then
	print("neorg error")
	return
end

neorg.setup({
	load = {
		["core.defaults"] = {}, -- Loads default behaviour
		["core.integrations.treesitter"] = {},
		["core.norg.concealer"] = {
			config = {
				markup_preset = "dimmed",
				icon_preset = "varied",
			},
		}, -- Adds pretty icons to your documents
		["core.norg.journal"] = {
			config = {
				journal_folder = "journal",
			},
		},
		["core.presenter"] = {
			config = {
				zen_mode = "zen-mode",
			},
		},
		["core.norg.dirman"] = { -- Manages Neorg workspaces
			config = {
				workspaces = {
					notes = "~/Documents/notes",
				},
				index = "index.norg",
				default_workspace = "notes",
			},
		},
		["core.norg.completion"] = {
			config = {
				engine = "nvim-cmp",
			},
		},
		["core.norg.esupports.metagen"] = {},
		["core.itero"] = {},
		["core.norg.qol.toc"] = {},
	},
})

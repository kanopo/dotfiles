-- completion is used to manage code suggestion format

vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert', 'preview' }
vim.opt.shortmess = vim.opt.shortmess + { c = true }


local cmp_ok, cmp = pcall(require, 'cmp')

if not cmp_ok then
	print("Cmp error")
	return
end

local luasnip_ok, luasnip = pcall(require, "luasnip")

if not luasnip_ok then
	print("luasnip error")
	return
end

require("luasnip/loaders/from_vscode").lazy_load()

local check_backspace = function()
	local col = vim.fn.col(".") - 1
	return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
end

cmp.setup({
	-- configurations
	-- sources
	sources = {
		{ name = 'nvim_lsp', keyword_length = 3 },
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'nvim_lua', keywork_length = 2 },
		{ name = 'buffer', keywork_length = 2 },
		{ name = 'vsnip', keywork_length = 2 },
		{ name = 'path' },
	},

	-- mappings for cmp usage
	mapping = {
		-- CTRL+SPACE bring up the cmp popup
		['<C-Space>'] = cmp.mapping.complete(),
		-- moving with tab and shift tab
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expandable() then
				luasnip.expand()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif check_backspace() then
				fallback()
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
		-- exit suggestions
		["<C-c>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		-- The ENTER key select the cmp suggestion
		['<CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		}),

	},

	-- window is for styling the cmp bubble
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},

	formatting = {
		fields = { 'menu', 'abbr', 'kind' },
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = 'LSP',
				vsnip = 'SNIP',
				buffer = 'BUFF',
				PATH = 'PATH',
			}
			item.menu = menu_icon[entry.source.name]
			return item
		end,
	},

	-- declaration to use snippets
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},

})

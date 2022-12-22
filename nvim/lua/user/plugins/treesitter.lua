
local status_ok, nvim_treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

nvim_treesitter.setup({
  ensure_installed = {
    "lua",
    'python'
  },

  auto_install = true,

  highlight = {
    enable = true
  },

  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
})


local status_ok, nvim_treesitter = pcall(require, "nvim-treesitter")
if not status_ok then
  return
end

nvim_treesitter.setup({
  ensure_installed = {
    "lua"
  },

  auto_install = true,

  highlight = {
    enable = true
  }
})

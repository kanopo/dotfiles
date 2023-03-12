
-- 	{
-- 		"folke/which-key.nvim",
-- 	},
--local which_key_ok, which_key = pcall(require, "which-key")
--if not which_key_ok then
--  print("Which key error")
--  return
--end
--
--which_key.setup({
--
--})

return {
  "folke/which-key.nvim",
  opts = {},
  config = function()
    require("which-key").setup({opts})
  end,
}


local status_ok, ccc = pcall(require, "ccc")
if not status_ok then
  print("ERROR ccc")
	return
end

ccc.setup({
   highlighter = {
    ---@type boolean
    auto_enable = false,
  }
})

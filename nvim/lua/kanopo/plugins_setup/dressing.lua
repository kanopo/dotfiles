
local dressing_ok, dressing = pcall(require, "dressing")

if not dressing_ok then
  print("Dressing error")
  return
end

dressing.setup({
  input = {
    enabled = true
  }
})

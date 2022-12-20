


local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  return
end


toggleterm.setup({
  direction="float",
  close_on_exit=true,
  float_opts = {
    border="curved",
    winblend = 10
  },
})

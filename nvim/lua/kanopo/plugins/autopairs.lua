local status_ok, autopairs = pcall(require, "nvim-autopairs")
if not status_ok then
  print("ERROR nvim-autopairs")
	return
end

autopairs.setup()

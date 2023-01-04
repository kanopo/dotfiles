local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  print("ERROR telescope")
	return
end

telescope.setup({})

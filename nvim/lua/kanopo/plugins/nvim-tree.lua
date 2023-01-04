local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  print("ERROR nvim-tree")
	return
end

nvim_tree.setup()

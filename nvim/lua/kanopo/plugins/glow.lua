local status_ok, glow = pcall(require, "glow")
if not status_ok then
	print("ERROR glow")
	return
end

glow.setup()

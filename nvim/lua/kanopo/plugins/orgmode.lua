
local orgmode_ok, orgmode = pcall(require, "orgmode")
if not orgmode_ok then
  print("orgmode error")
  return
end


orgmode.setup({
  org_agenda_files = {
    "~/Documents/agenda/*",
  },
  org_default_notes_file = "~/Documents/agenda/index.org"
})

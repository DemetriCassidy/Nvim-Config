local status_ok, org = pcall(require, "orgmode")
if not status_ok then
	return
end

org.setup({
	org_agenda_files = { "~/MEGA/org/*" },
	org_default_notes_file = "~/MEGA/org/notes.org",
})

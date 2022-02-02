local options = {
	ignorecase = true,
	number = true,
	hlsearch = true,
	showmatch = true,
	ruler = true,
	cc = "80",
	mouse = "a",
	relativenumber = false,
	showcmd = true,
	incsearch = true,
	smarttab = true,
	smartcase = true,
	cursorline = true,
	cmdheight = 1,
	laststatus = 2,
	backspace = "2",
	expandtab = true,
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	scrolloff = 8,
	sidescrolloff = 8,
	splitbelow = true,
	splitright = true,
	completeopt = { "menuone", "noselect" },
	showmode = false, -- no need to show mode under statusline
	wrap = false, -- show long lines as one big line
	guifont = "Iosevka Nerd Font Mono:h15", -- font for gui clients
    list = true,
}
for k, v in pairs(options) do
	vim.opt[k] = v
end

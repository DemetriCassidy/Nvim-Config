local lualine_status_ok, lualine = pcall(require, "lualine")
if not lualine_status_ok then
    return
end

local exclude_statusline = function()
    local fts = { "startify", "Outline", "NvimTree" }
    for _, ft in pairs(fts) do
        if vim.bo.filetype == ft then
            return false
        end
    end
    return true
end
lualine.setup({
    options = {
        icons_enabled = true,
        theme = "catppuccin",
        condition = exclude_statusline,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = { "NvimTree" },
        always_divide_middle = true,
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
    },
    tabline = {},
    extensions = {},
})

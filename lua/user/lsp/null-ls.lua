local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    debug = false,
    sources = {
        formatting.prettier.with({ "--no-semi", "--single-quote", "--jsx-single-quote" }),
        formatting.black.with({ "--fast" }),
        formatting.stylua,
        diagnostics.flake8,
        formatting.clang_format.with({
            command = "/usr/local/Cellar/clang-format/13.0.0/bin/clang-format"
        })
    },
})

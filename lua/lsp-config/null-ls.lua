local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    debug = false,
    sources = {
        -- typescrpt/javascript --
        formatting.prettier,
        diagnostics.eslint,
       -- python --
        formatting.black
    },
})

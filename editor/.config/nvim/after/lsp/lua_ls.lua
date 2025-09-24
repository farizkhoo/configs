local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
    capabilities = lsp_capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "require" },
            },
        },
    }
}

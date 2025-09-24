local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
    capabilities = lsp_capabilities,
    settings = {
        pylsp = {
            plugins = {
                ruff = {
                    enabled = true,
                },
                mypy = {
                    enabled = true,
                },
            },
        },
    },
}

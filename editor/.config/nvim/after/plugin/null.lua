--[[
local null_ls = require("null-ls")
require("mason-null-ls").setup({
    ensure_installed = {
        -- Opt to list sources here, when available in mason.
    },
    automatic_installation = false,
    handlers = {},
})
null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.formatting.black,
        -- Anything not supported by mason.
    },
})


local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
    -- you can reuse a shared lspconfig on_attach callback here
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
                    vim.lsp.buf.format({
                        bufnr = bufnr,
                        filter = function(c)
                            return c.name == "null-ls"
                        end
                    })
                    -- vim.lsp.buf.formatting_sync()
                end,
            })
        end
    end,
})
--]]

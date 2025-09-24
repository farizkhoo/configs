local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        -- Conform will run multiple formatters sequentially
        lua = { "stylua" },
        python = function(bufnr)
            if conform.get_formatter_info("ruff_format", bufnr).available then
                return { "ruff_format", "ruff_fix", "ruff_organize_imports" }
            else
                return { "isort", "black" }
            end
        end
    },
    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 5000,
        lsp_format = "fallback",
    },
})

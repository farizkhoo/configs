local null_ls = require('null-ls')
local utils = require('null-ls/utils')

local mypy = null_ls.builtins.diagnostics.mypy.with({
    runtime_condition = function(params)
        return utils.path.exists(params.bufname)
    end,
})

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.flake8,
        mypy,
        null_ls.builtins.formatting.autoflake,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.prettierd,
    }
})

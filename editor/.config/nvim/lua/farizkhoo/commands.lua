local function formatBuffer()
    vim.lsp.buf.format({
        filter = function (client)
            return client.name == "null-ls"
        end,
    })
end

vim.api.nvim_create_user_command('Nvconfig', ':e ~/.config/nvim', {})
vim.api.nvim_create_user_command('Nvplugs', ':e ~/.config/nvim/lua/farizkhoo/packer.lua', {})
vim.api.nvim_create_autocmd('BufWritePre', { callback = formatBuffer })
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
    command = "EslintFixAll",
})

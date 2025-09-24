vim.keymap.set("n", "<CR>", vim.cmd.noh)
vim.keymap.set("n", "<leader><leader>", "<C-^>")
vim.keymap.set("n", "<leader>]", vim.cmd.bn)
vim.keymap.set("n", "<leader>[", vim.cmd.bp)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>d", vim.diagnostic.goto_next)

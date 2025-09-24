--[[
local lsp = require("lsp-zero").preset({})
local lspconfig = require("lspconfig")

-- Fix Undefined global 'vim'
lsp.configure("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})
lsp.configure("ts_ls", {
	on_attach = function(client, bufnr)
		client.server_capabilities.documentFormattingProvider = false
	end,
})

local cmp = require("cmp")
local cmp_action = lsp.cmp_action()

cmp.setup({
	mapping = {
		["<Tab>"] = cmp_action.luasnip_supertab(),
		["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
	},
})

local au = vim.api.nvim_create_autocmd
local ag = vim.api.nvim_create_augroup
local clear_au = vim.api.nvim_clear_autocmds

local lsp_formatting = function(bufnr)
	vim.lsp.buf.format({
		filter = function(client)
			-- apply whatever logic you want (in this example, we'll only use null-ls)
			return client.name == "null-ls"
		end,
		bufnr = bufnr,
	})
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ async = false, bufnr = bufnr })
      end,
    })
  end
end

lsp.on_attach(on_attach)


-- lsp.on_attach(function(client, bufnr)
	-- lsp.default_keymaps({ buffer = bufnr })
	--local augroup = ag("LspFormatting", { clear = false })
	--if client.supports_method("textDocument/formatting") then
--	au("BufWritePre", {
--			clear_au({ group = augroup, buffer = bufnr }),
--			group = augroup,
--			buffer = bufnr,
--			callback = function()
--				lsp_formatting(bufnr)
--			end,
--		})
--	end
--end)

lsp.setup()
lspconfig.pylsp.setup({
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
})

vim.diagnostic.config({
	virtual_text = true,
})
--]]

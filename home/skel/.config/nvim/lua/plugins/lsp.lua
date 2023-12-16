return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				"shfmt",
				"lua-language-server",
				"prettier",
				-- "pyright",
				-- "black",
				"python-lsp-server",
				"yapf", -- code formatting (preferred over autopep8)
				"pyflakes", -- linter to detect errors
				"pydocstyle", -- linter for docstring style checking
			},
		},
	},
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local conform = require("conform")

			conform.setup({
				formatters_by_ft = {
					lua = { "stylua" },
					sh = { "shfmt" },
					python = { "yapf" },
					yaml = { "prettier" },
				},
				-- Disable autoformat on save
				-- format_on_save = {
				--   lsp_fallback = true,
				--   async = false,
				--   timeout_ms = 500,
				-- },
			})

			vim.keymap.set({ "n", "v" }, "<leader>mp", function()
				conform.format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 500,
				})
			end, { desc = "Format file or range (in visual mode)" })
		end,
	},
}

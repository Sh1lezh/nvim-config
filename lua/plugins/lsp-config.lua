return {
	{
		"williamboman/mason.nvim",
    lazy = false,
		config = function()
			require("mason").setup()
		end
	},
	{
    "williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "harper_ls", "rust_analyzer", "zls", "ts_ls" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.harper_ls.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.zls.setup({})
			lspconfig.ts_ls.setup({})

			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	},
	{
		require("telescope").setup {
			extensions = {
    				["ui-select"] = {
      					require("telescope.themes").get_dropdown {

      	 	}
    		}
  		}
		}
	}
}




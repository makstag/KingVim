return
{
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
		"windwp/nvim-ts-autotag"
	},
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = {
			    enable = true,
			    additional_vim_regex_highlighting = false
			},
			indent = { enable = true },
			autotag = { enable = true },
			ensure_installed = { "c", "cpp", "cmake", "asm", "make", "query" },
			sync_install = true,
			auto_install = true,
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			context_commentstring = {
				enable = true,
				enable_autocmd = false
			}
		})
	end
}

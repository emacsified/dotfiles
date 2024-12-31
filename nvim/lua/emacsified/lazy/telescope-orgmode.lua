return {
	"nvim-orgmode/telescope-orgmode.nvim",
	event = 'VeryLazy',
	dependencies = {
		"nvim-orgmode/orgmode",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require('telescope').load_extension('orgmode')

		vim.keymap.set("n", "<leader>ok", require("telescope").extensions.orgmode.refile_heading)
		vim.keymap.set("n", "<leader>ofh", require("telescope").extensions.orgmode.search_headings)
		vim.keymap.set("n", "<leader>li", require("telescope").extensions.orgmode.insert_link)
	end,
}

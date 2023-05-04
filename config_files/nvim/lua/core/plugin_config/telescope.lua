local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

require("telescope").setup({
	defaults = {
		winblend = 15,
		layout_config = {
			height = 0.8, -- adjust the height of the results window
			width = 0.8, -- adjust the width of the results window
			preview_width = 0.5, -- adjust the width of the preview pane
		},
	},
})

-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#202020", fg = "#5E81AC" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#202020" })
-- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#0C2340" })
-- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "#3B4252" })

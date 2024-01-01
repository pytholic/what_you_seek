vim.g.mapleader = " "

vim.keymap.set("v", "=", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "-", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Remap ctrl-/ for vertical split
vim.api.nvim_set_keymap("n", "<C-_>", ":vsplit<CR>", { noremap = true, silent = true })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- grep remap --
vim.api.nvim_set_keymap("n", "<leader>vg", [[:vimgrep /input/ %:p<Left><Left><Left><Left><Left>]], { noremap = true })

vim.keymap.set("n", ".", "<cmd>cnext<CR>zz")
vim.keymap.set("n", ",", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- nvim tree --
vim.keymap.set("n", "<leader>t", "<cmd>:NvimTreeToggle<CR>", { silent = true })
vim.keymap.set("n", "<leader>n", "<cmd>:NvimTreeFindFileToggle<CR>", { silent = true })

-- Remap Tab and Shift-Tab for indenting and unindenting
vim.api.nvim_set_keymap("v", "<Tab>", ">gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-Tab>", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.smart_tab()", { noremap = true, silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.smart_shift_tab()", { noremap = true, silent = true, expr = true })
-- Define the smart_tab() and smart_shift_tab() functions
-- function _G.smart_tab()
--     return vim.fn.pumvisible() == 1 and "<C-n>" or "<Tab>"
-- end
function _G.smart_tab()
	if vim.fn.mode() == "i" then -- fixed the issue where it wrote <tab> in insert mode
		return "\t"
	else
		return vim.fn.pumvisible() == 1 and "<C-n>" or "<Tab>"
	end
end

function _G.smart_shift_tab()
	return vim.fn.pumvisible() == 1 and "<C-p>" or "<S-Tab>"
end

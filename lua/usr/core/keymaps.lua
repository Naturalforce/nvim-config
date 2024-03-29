vim.g.mapleader = " "

local keymap = vim.keymap

-- Global
keymap.set("i", "jk", "<Esc>")
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sx", ":close<cr>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffer<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
keymap.set("n", "<leader>lds", "<cmd>Telescope grep_string<cr>")

-- telescope git commmands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>")
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>")
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>")
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>")

-- hop cmd
keymap.set("n", "<leader>hw", ":HopWord<cr>")
keymap.set("n", "<leader>hww", ":HopWordMW<cr>")
keymap.set("n", "<leader>hc", ":HopChar2<cr>")
keymap.set("n", "<leader>hcc", ":HopChar2MW<cr>")
keymap.set("n", "<leader>hl", ":HopLine<cr>")
keymap.set("n", "<leader>hls", ":HopLineStart<cr>")

-- maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<cr>")

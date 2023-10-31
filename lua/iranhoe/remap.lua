local keymap = vim.keymap;

vim.g.mapleader = " "
keymap.set("n", "<leader>pv", vim.cmd.Ex) -- open explorer

keymap.set("n", "x", '"_x')               -- Do not yank with x
keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- Swap line to up
keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- Swap line to down

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set({ "n", "v" }, ">", ">gv")
keymap.set({ "n", "v" }, "<", "<gv")
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set({ "n", "v" }, "<leader>d", [["_d]])

keymap.set("i", "<C-c>", "<Esc>")

keymap.set("n", "Q", "<nop>")
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
keymap.set("n", "gn", ":bn<CR>")
keymap.set("n", "gp", ":bp<CR>")

-- save usgin ctrl u
keymap.set("n", "<C-s>", ":w<CR>")
keymap.set("n", "<leader>w", ":w<CR>")

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/iranhoe/packer.lua<CR>");
keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


-- OPTIONALS
-- vim.keymap('n', '+', '<C-a>')
-- vim.keymap('n', '-', '<C-x>')
-- keymap.set('n', 'dw', 'vb"_d') -- Delete a word backwards
-- keymap.set('n', '<C-a>', 'gg<S-v>G')
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })      -- New Tab
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })  -- Split Horizontal
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true }) -- Split Vertical
keymap.set('v', '<up>', '<C-w>+')
keymap.set('v', '<down>', '<C-w>-')
keymap.set('v', '<left>', '<C-w><')
keymap.set('v', '<right>', '<C-w>>')

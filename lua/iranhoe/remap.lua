local keymap = vim.keymap;

vim.g.mapleader = " "
keymap.set("n", "<leader>pv", vim.cmd.Ex)       -- open explorer

vim.keymap.set("n", "x", '"_x')                 -- Do not yank with x
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")    -- Swap line to up 
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")    -- Swap line to down

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "gn", ":bn<CR>")
vim.keymap.set("n", "gp", ":bp<CR>")

-- save usgin ctrl u
vim.keymap.set("n", "<C-u>", ":w<CR>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/iranhoe/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
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

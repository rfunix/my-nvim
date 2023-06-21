vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.wo.relativenumber = true
vim.wo.wrap = false

-- use spaces for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
      
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- split planel
vim.keymap.set("n", "<leader>v", ":vsplit<cr>", {noremap = true})
vim.keymap.set("n", "<leader>h", ":split<cr>", {noremap = true})

-- move between panes
vim.keymap.set("n", "<C-J>", "<C-W><C-J>", {noremap = true})
vim.keymap.set("n", "<C-K>", "<C-W><C-K>", {noremap = true})
vim.keymap.set("n", "<C-L>", "<C-W><C-L>", {noremap = true})
vim.keymap.set("n", "<C-H>", "<C-W><C-H>", {noremap = true})

-- tabs
vim.keymap.set("n", "<leader>tp", ":tabp", {noremap = true})
vim.keymap.set("n", "<leader>t<leader>", ":tabn<cr>", {noremap = true})
vim.keymap.set("n", "<leader>tn", ":tabnew<cr>", {noremap = true})
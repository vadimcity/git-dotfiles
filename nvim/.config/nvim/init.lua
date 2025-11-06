--require("config.lazy")

-- Defualt config
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.mouse = ""

-- Disable background
vim.cmd [[highlight Normal guibg=NONE ctermbg=NONE]]

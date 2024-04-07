local opt = vim.opt

--line numbers
opt.number = true
opt.relativenumber = true

--tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

--line wrapping
opt.wrap = false

--search setting
opt.ignorecase = true
opt.smartcase = true

--cursorline
opt.cursorline = true

--backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

--split window
opt.splitright = true
opt.splitbelow = true

--opt.iskeyword:append("-")
--opt.termguicolors = true

local options = {
  -- Tab / Indentation
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smartindent = true,
  smarttab = true,
  list = true,
  listchars = "tab:>·,trail:·",

  -- Search
  incsearch = true,
  ignorecase = true,
  smartcase = true,
  hlsearch = true,

  -- Appearance
  number = true,
  relativenumber = true,
  termguicolors = true,
  colorcolumn = "100",
  signcolumn = "yes",
  cmdheight = 1,
  scrolloff = 10,
  completeopt = "menuone,noinsert,noselect",

  -- Behaviour
  errorbells = false,
  swapfile = false,
  backup = false,
  undofile = true,
  undodir = vim.fn.expand("~/.nvim/undodir"),
  backspace = "indent,eol,start",
  splitright = true,
  splitbelow = true,
  autochdir = false,
  mouse = "a",
  clipboard = "unnamedplus",
  modifiable = true,
  encoding = "UTF-8",
  showmode = false,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.iskeyword:append("-")

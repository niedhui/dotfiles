-- :help options
local options = {
  number  = true,
  relativenumber = true,

  completeopt = { "menuone", "noselect" },  -- mostly just for cmp
  cmdheight = 2,                            -- more space in the neovim command line for displaying messages

  mouse = "a",                              -- allow the mouse to be used in neovim
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard

  fileencoding = "utf-8",                   -- the encoding written to a file
  hlsearch = true,                          -- highlight all matches on previous search pattern
  ignorecase = true,                        -- ignore case in search patterns
  pumheight = 10,                           -- pop up menu height
  showmode = false,                         -- we don't need to see things like -- INSERT -- anymore
  smartcase = true,                         -- smart case
  smartindent = true,                       -- make indenting smarter again

  timeoutlen = 1000,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  updatetime = 300,                         -- faster completion (4000ms default)

  undofile = true,                          -- enable persistent undo
  backup = false,                           -- creates a backup file

  expandtab = true,
  tabstop = 2,
  shiftwidth = 2,

  backup = false,                           -- creates a backup file

  cursorline = false,
  wrap = false,

  list = true,                              -- Show invisible characters
  listchars = {
    tab = "  ",
    trail = ".",
    extends = ">",
    precedes = "<",
  }

}

vim.opt.shortmess:append "c"

for k,v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]                    -- treat xx-yy as one word

vim.cmd [[autocmd BufWritePre * :%s/\s\+$//e]]    -- trail whitespace
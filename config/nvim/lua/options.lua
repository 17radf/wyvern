local o = vim.opt
local g = vim.g
-- colorscheme
local colorscheme = "oxocarbon"
if not core_ok then
  local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
  if not ok then
    vim.cmd("colorscheme desert")
  end
  -- additional config
  -- vim.opt.background = "dark"
  return
end

-- settings
local options = {
  number = true,
  relativenumber = true,
  termguicolors = true,
  smartcase = true,
  smartindent = true,
  smarttab = true,
  expandtab = true,
  cindent = true,
  shiftwidth = 2,
  softtabstop = 2,
  tabstop = 2,
  colorcolumn = "80",
  splitbelow = true,
  splitright = true,
  joinspaces = true,
  cursorline = true,
  --
  clipboard = { "unnamedplus" }, -- make clipboard system
  mouse = "n",                   -- mouse mode??? wtff
  timeoutlen = 300,
  updatetime = 300,
  showtabline = 2,
  laststatus = 3,
  --
  showmode = false,
  undofile = true,
  signcolumn = "yes",
  numberwidth = 2,
  -- tw = 80,
  wrap = true,
  linebreak = true,
  breakindent = true,
  breakindentopt = {
    shift = 0,
    min = 40,
    sbr = true,
  },
  backup = false,
  swapfile = false,
  writebackup = false,
  autowriteall = true,
}

-- for loops all of the option above
for k, v in pairs(options) do
  o[k] = v
end

----------------------- ext plugins -----------------------
--- indent blankline
-- vim.o.list = true

-- Blade to html
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.blade.php",
  command = "setlocal ft=html",
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'NvimTree' },
  callback = function(args)
    vim.api.nvim_create_autocmd('VimLeavePre', {
      callback = function()
        vim.api.nvim_buf_delete(args.buf, { force = true })
        return true
      end
    })
  end,
})


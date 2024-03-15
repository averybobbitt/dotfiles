-- initialize lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- install plugins
require("lazy").setup({
    { 
        "catppuccin/nvim", 
	name = "catppuccin", 
	priority = 1000 
    },
    {
    	"nvim-lualine/lualine.nvim",
    	dependencies = { 
	    "nvim-tree/nvim-web-devicons"
        }
    }
})

-- set colorscheme
vim.cmd.colorscheme "catpuccin-mocha"

-- set status bar
require('lualine').setup()

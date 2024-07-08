local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

vim.g.mapleader = " " -- the leader key is used in many keymaps, 

local plugins = {
	"nvim-lua/plenary.nvim",
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{
		"nvim-telescope/telescope.nvim",
		tag = '0.1.6', 
		requires = {{"nvim-lua/plenary.nvim"}}
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = {"nvim-lua/plenary.nvim"}
	},
	{"mbbill/undotree"},
	{"tpope/vim-fugitive"},
        {"neovim/nvim-lspconfig"}, --lsp configs
        {"hrsh7th/cmp-nvim-lsp"}, -- autocompletion
        {"hrsh7th/nvim-cmp"}, --additional autocompletion
        {
		"L3MON4D3/LuaSnip",
		version = "v2.*",
		build = "make install_jsregexp",
		dependencies = {'saadparwaiz1/cmp_luasnip','rafamadriz/friendly-snippets'}
	}, --snippet engine
        {"williamboman/mason.nvim"}, --lsp package manager
        {"williamboman/mason-lspconfig.nvim"}, --lsp package manager configs
		{
			"Tsuzat/NeoSolarized.nvim",
			lazy = false, -- make sure we load this during startup if it is your main colorscheme
			priority = 1000, -- make sure to load this before all the other start plugins
			config = function()
			  vim.cmd [[ colorscheme NeoSolarized ]]
			end
		}
}
require("lazy").setup(plugins, {})

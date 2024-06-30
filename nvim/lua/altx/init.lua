--- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Bootstrap scripts
require("altx.bootstrap")

-- Plugins
require("altx.plugins")

-- Options
require("altx.options")

-- Remaps
require("altx.remaps")


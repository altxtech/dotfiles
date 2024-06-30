vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)

-- Nvimtree (e)
-- I'm  using the letter 'e' for this because it calls back to the 'Ex' command for netrw
vim.keymap.set("n", "<leader>et", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>ee", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<leader>ef", vim.cmd.NvimTreeFindFile)
vim.keymap.set("n", "<leader>ec", vim.cmd.NvimTreeCollapse)


--Telescope (f)
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

--Tabbing (t)
vim.keymap.set('n', '<leader>tt', vim.cmd.tabnew, {})

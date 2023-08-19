local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.ensure_installed({
	'pyright', 'gopls'
})
-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

-- Sighs
lsp.set_sign_icons({
  error = '',
  warn = '',
  hint = '',
  info = ''
})

lsp.setup()

-- Setup pyright
require'lspconfig'.pyright.setup{}

-- Turn on virtual text
vim.diagnostic.config{ virtual_text = true }

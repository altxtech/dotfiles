require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {
	  "bash", "c", "cpp", "css", "dockerfile", "gitignore",
	  "go", "gomod", "graphql", "hcl", "html", "java", "javascript", "json", "lua",
	  "make", "markdown", "proto", "python", "regex", "rust", "sql", "terraform", "typescript", "vim", "xml", "yaml"
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,


  highlight = {
    enable = true,
  },
}

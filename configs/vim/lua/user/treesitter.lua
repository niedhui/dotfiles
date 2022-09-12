require('nvim-treesitter.configs').setup {

  ensure_installed = {"lua", "rust", "typescript", "ruby", "tsx"},
  sync_install =false,
  auto_install = true,

  highlight = {
    enable = true
  },

  indent = {
    enable = true
  }

}

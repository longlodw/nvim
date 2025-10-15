return {
  require('lspconfig').metals.setup {
    filetypes = { 'scala', 'sbt' },
  },
}

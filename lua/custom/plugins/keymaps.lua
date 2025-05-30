local map = function(keys, func, desc, mode)
  mode = mode or 'n'
  vim.keymap.set(mode, keys, func, { desc = 'LSP: ' .. desc })
end

map('<leader>df', vim.diagnostic.open_float, 'Describe Float')
map('<leader>ne', vim.diagnostic.goto_next, 'Go to the next error')

require('lspconfig').jdtls.setup {
  settings = {
    java = {
      configuration = {
        runtimes = {
          {
            name = 'JavaSE-21',
            path = '/Users/jackclarke/.jenv/versions/24/bin/java',
            default = true,
          },
        },
      },
    },
  },
}

return {}

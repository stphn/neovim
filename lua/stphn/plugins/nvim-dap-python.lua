return {
  'mfussenegger/nvim-dap-python',
  ft = 'python',
  dependencies = {
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
  },
  config = function()
    require('dap-python').setup('~/.pyenv/versions/debugpy/bin/python')
    local keymap = vim.keymap -- for conciseness

    keymap.set('n', '<leader>dpr', '<cmd>lua require"dap-python".test_method()<CR>')
    vim.keymap.set({ 'n' }, '<leader>dpr', function()
      require('dap-python').test_method()
    end, { desc = 'Test method under cursor' }) -- test method under cursor
  end,
}

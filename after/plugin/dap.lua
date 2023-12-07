local dap = require('dap')

vim.keymap.set('n', '<F5>', dap.continue, {})
vim.keymap.set('n', '<F10>', dap.step_over, {})
vim.keymap.set('n', '<F11>', dap.step_into, {})
vim.keymap.set('n', '<F12>', dap.step_out, {})

vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, {})
vim.keymap.set('n', '<leader>B', function()
    dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end
, {})

vim.keymap.set('n', '<leader>B', function()
    dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
end
, {})


vim.keymap.set('n', '<leader>dr', dap.repl.open, {})

require('dap-go').setup()
require('dapui').setup()

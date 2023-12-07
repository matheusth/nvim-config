local action_state = require('telescope.actions.state')
require('telescope').setup {
    defaults = {
        prompt_prefix = ' ',
        mappings = {
            i = {
                ['<c-a>'] = function() print(vim.inspect(action_state.get_selected_entry())) end
            }
        }
    }
}
require('telescope').load_extension('fzf')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-_>', function ()
    builtin.current_buffer_fuzzy_find({sorting_strategy='ascending',
    layout_config = {prompt_position = "top"}, winblend=10})
    end
    , {})

vim.keymap.set('n', '<C->', builtin.buffers, {desc = "Search buffer"})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Search files"})

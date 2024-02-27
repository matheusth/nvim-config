return {
    'mbbill/undotree',
    config = function ()
        vim.keymap.set('n', '<leader><F2>', vim.cmd.UndotreeToggle, {})
        
        print("config undotree");
    end
}

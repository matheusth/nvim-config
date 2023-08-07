require('lualine').setup {
    options = {
        theme = "catppuccin",
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
    },
    sections = {
        lualine_c = { { 'filename', path = 1 } }
    },
}

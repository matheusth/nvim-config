return {
    'vimwiki/vimwiki',
    init = function ()
        vim.g.vimwiki_path = '~/vimwiki'
        vim.g.vimwiki_syntax = 'default'
        vim.g.vimwiki_global_ext = 0
    end,
}

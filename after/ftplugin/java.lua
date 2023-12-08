local home = os.getenv('HOME');
local jdtls_root_dir = home .. '/.local/share/jdt-language-server'
local root_makers = { 'gradlew', 'mvnw', '.git' }
local root_dir = require('jdtls.setup').find_root(root_makers)
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local workspace_folder = home ..
    "/.local/share/jdt-language-server/workspaces/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")
local function register_buffer(bufnr, client_id)
  if not clients[bufnr] then
    print("adding client id " .. client_id)
    clients[bufnr] = {client_id}
  else
    print("client id exists")
    table.insert(clients[bufnr], client_id)
  end
end
local config = {
    capabilities = capabilities,
    cmd = {
        'java',
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-Xmx1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
        '-jar', jdtls_root_dir .. '/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
        '-configuration', jdtls_root_dir .. '/config_linux',
        '-data', workspace_folder
    },
    root_dir = root_dir,
    settings = {
        java = {
        }
    },
    init_options = {
        bundles = {}
    },
}
require('jdtls').start_or_attach(config)

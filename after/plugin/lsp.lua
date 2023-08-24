local lsp = require("lsp-zero")

lsp.preset("recommended")

require('lspconfig').eslint.setup({
    on_attach = function(client, bufnr)
        -- Set up linting
        client.resolved_capabilities.lint = {
            enable = true,
            signs = true,
            messages = true,
            update_in_insert = false,
        }

        -- Set up formatting
        client.resolved_capabilities.documentFormatting = {
            enable = true,
        }

        -- Definir función para corregir errores con un comando
        local function fix_errors()
            vim.lsp.buf.execute_command({
                command = '_typescript.applyCodeAction',
                arguments = { bufnr, {} }
            })
        end

        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-z>', fix_errors, { noremap = true, silent = true })


        -- Set up eslint config
        client.resolved_capabilities.eslintConfig = {
            root = vim.fn.expand('%:p:h'),
            extends = '.eslintrc.js',
        }

        lspconfig.eslint.setup({
            on_attach = on_attach,
        })
    end,
})

lsp.ensure_installed({
    'tsserver',
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()


local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader><leader>", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<C-z>", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

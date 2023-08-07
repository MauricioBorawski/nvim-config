-- Basic config
vim.g.neoformat_enabled_javascript = {'prettier'}
vim.g.neoformat_autoformat = true
vim.g.neoformat_basic_format_align = 1

-- Remap create remap for Neoformat

vim.api.nvim_set_keymap('n', '<leader>f', ':Neoformat<CR>', { noremap = true, silent = true })


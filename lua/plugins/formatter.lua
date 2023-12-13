return {
    "stevearc/conform.nvim",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local conform = require("conform")

      conform.setup({
        formatters_by_ft = {
          javascript = { "prettier" },
          typescript = { "prettier", "prettierd" },
          javascriptreact = { "prettier" },
          typescriptreact = { "prettier" },
          python = { "black" },
          lua = { "stylua" },
        json = { "prettier", "prettierd" },
        },
      })

      vim.keymap.set("n", "<leader>f", function()
        conform.format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        })
      end)
    end,
}

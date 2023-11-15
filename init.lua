-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lazy").setup("plugins", {
  opts = {
    colorScheme = "kanagawa"
  },
})
require("config.keymaps")
require("config.set")

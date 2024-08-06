-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lazy").setup("plugins")
require("mini.pairs").setup()
require("config.keymaps")
require("config.set")
require("config.colorscheme")

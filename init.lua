-- bootstrap lazy.nvim, LazyVim and plugins
require("config.lazy")

-- for some reason my r markdown files have a rmd filetpe, this just allows the
-- headlines plugin to work for them too
require("headlines").setup({
  rmarkdown = require("headlines").config.rmd,
})

return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
     'neoclide/coc.nvim', branch='release'
  },
  
    --[[ On new systems install COC packages via
        CocInstall coc-vimtex coc-texlab
    --]]
--   {
--   	"nvim-treesitter/nvim-treesitter",
--   	opts = {
--   		ensure_installed = {
--   			"vim", "lua", "vimdoc",
--        "html", "css"
--   		},
--   	},
--   },
   
}

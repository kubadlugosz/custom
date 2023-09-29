
local plugins = {
  {
    'preservim/nerdcommenter',lazy=false,
  },
  {
    'shime/vim-livedown',lazy=false,
  },
  {
  --  "turbio/bracey.vim",lazy=false,
  },
  {
  --'tamago324/vim-browsersync',lazy =false,
  },
  {
  --  'tyru/open-browser.vim',lazy=false,
  },
  {
  
  -- 'ray-x/web-tools.nvim',lazy =false,
  },
  {
   'alvan/vim-closetag',lazy = false,
  },
  {
   'luk400/vim-jukit', lazy = false,
  config = function(_, opts)
      require("core.utils").load_mappings("jukit")
    end
  }, 
  {
    'jalvesaq/Nvim-R', lazy =false,
  },
    {
    'ncm2/ncm2', lazy =false,
  },
  {
    
    'jimhester/lintr', lazy = false,
  },
  {
    'ThePrimeagen/vim-be-good', lazy = false,
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    ft = {'python','html','css'},
    opts = function ()
      return require 'custom.configs.null-ls'
    end,
  },
  {
  "neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
  },
 {
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        'python-lsp-server',
        'jedi-language-server',
        'ruff',
        'mypy',
        'black',
        'markuplint',
        'bslint',
        'css-lsp',
        'stylelint',
        'djlint',
        --'r-languageserver',

      },
    },
  },
}

return plugins

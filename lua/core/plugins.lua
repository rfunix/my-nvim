local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- plugin manager
  use 'wbthomason/packer.nvim'

  -- themes
  use 'sainnhe/gruvbox-material'
  use 'ellisonleao/gruvbox.nvim'
  use 'shaunsingh/nord.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }

  use 'echasnovski/mini.nvim'

  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'xiyaowong/transparent.nvim'

  -- syntax highlighting
  use { 'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- finders
  use "nvim-lua/plenary.nvim"
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.1' }

  -- clojure repl
  use 'Olical/conjure'

  -- lsp
  use { 'neovim/nvim-lspconfig', mode = 'lspconfig' }

  -- autocomplete
  use { "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
      'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
      'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
      'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
    }
  }

  use 'github/copilot.vim'

  use 'guns/vim-sexp'
  use 'luochen1990/rainbow'


  use 'tpope/vim-surround'

  -- manager lsp
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }
  -- welcome vim
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end
  }

  -- git plugin
  use 'airblade/vim-gitgutter'

  -- mult cursor mode
  use 'mg979/vim-visual-multi'

  -- notify
  use 'rcarriga/nvim-notify'

  -- better ui
  use { 'stevearc/dressing.nvim' }

  -- buffer tabs
  use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }

  -- beatifull indent lines
  use "lukas-reineke/indent-blankline.nvim"

  -- cmd vscode like
  use { "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim", "rcarriga/nvim-notify"
    },
  }

  use { 'MunifTanjim/nui.nvim' }

  use({
    "aserowy/tmux.nvim",
    config = function() return require("tmux").setup() end
  })

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

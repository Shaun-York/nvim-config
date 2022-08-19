-- $HOME/.config/nvim/lua/packer_init.lua
-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  PackerBootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end
-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]
-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end
-- Install plugins
return packer.startup(function(use)
  -- Add you plugins here:
  use 'wbthomason/packer.nvim' -- packer can manage itself
  -- GitHub CoPilot
  use 'github/copilot.vim'
  -- File explorer
  use 'kyazdani42/nvim-tree.lua'
  -- Indent line
  use 'lukas-reineke/indent-blankline.nvim'
  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  -- Tag viewer
  use 'preservim/tagbar'
  -- Treesitter interface
  use 'nvim-treesitter/nvim-treesitter'
  -- Color schemes
  use { 'catppuccin/nvim', as = 'catppuccin' }
  -- LSP
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }
  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/vim-vsnip',
    },
  }
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = {
      {'nvim-lua/plenary.nvim'}, {'kdheepak/lazygit.nvim'}}
  }
  -- Snippets
  use {
    'hrsh7th/cmp-vsnip',
    after = 'nvim-cmp',
    requires = { 'hrsh7th/cmp-vsnip' },
  }
  -- Bufferline
  use {
    'akinsho/nvim-bufferline.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }
  -- Statusline
  use {
    'feline-nvim/feline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }
  -- git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup{}
    end
  }
  -- Toggle Terminal
  use {
    'akinsho/toggleterm.nvim',
    tag = 'v2.*',
  }
  -- Dashboard (start screen)
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },

  }
  -- Automatically set up your configuration after cloning packer.nvim
  if PackerBootstrap then
    require('packer').sync()
  end
end)


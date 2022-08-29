-- $HOME/.config/nvim/plugin/nvim-treesitter.lua
-- Treesitter configuration file
-- url: https://github.com/nvim-treesitter/nvim-treesitter

local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end
nvim_treesitter.setup{}


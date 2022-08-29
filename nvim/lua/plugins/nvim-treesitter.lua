-- $HOME/.config/nvim/plugin/nvim-treesitter.lua
-- Treesitter configuration file
-- url: https://github.com/nvim-treesitter/nvim-treesitter

local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

nvim_treesitter.setup{
  indent = {
    enable = true,
    ensure_installed = true,
  },
  ensure_installed = {"bash","c","cpp","cmake","lua", "rust", "go","javascript","python"},
  sync_install = true,
  auto_install = true,
  highlight = {enable = true}
}


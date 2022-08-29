-- $HOME/.config/nvim/lua/plugins/indent-blankline.lua
local status_ok, indent_blankline = pcall(require, 'indent_blankline')
if not status_ok then
  return
end

indent_blankline.setup {
  char = "▏",
  use_treesitter = false,
  show_first_indent_level = true,
  filetype_exclude = {
    'help',
    'dashboard',
    'git',
    'markdown',
    'text',
    'terminal',
    'lspinfo',
    'packer',
    'NvimTree',
  },
  buftype_exclude = {
    'terminal',
    'lspinfo',
    'packer',
    'help',
    'checkheath',
    'man',
    "",
    'nofile',
  },
}


-- $HOME/.config/nvim/lua/plugin/nvim-cmp.lua
local cmp_status_ok, copilot = pcall(require, 'copilot')
if not cmp_status_ok then
  return
end


copilot.setup{

}


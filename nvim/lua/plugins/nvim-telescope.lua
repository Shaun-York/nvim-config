local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

telescope.setup({
  defaults = {
    mappings = {
      i = { ['<C-h>'] = "which_key" }
    }
  },
  pickers = {
    find_files = { theme = "theme" }
  },
})



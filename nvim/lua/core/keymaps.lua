-- $HOME/.config/nvim/lua/core/keymaps.lua
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
-- Change leader to a comma
vim.g.mapleader = ','
-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------
map('i', 'kk', '<Esc>')
-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')
-- Toggle auto-indenting for code paste
map('n', '<F2>', ':set invpaste paste?<CR>')
vim.opt.pastetoggle = '<F2>'
-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical
-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')
-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')
map('i', '<leader>s', '<C-c>:w<CR>')
-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')
-- Move lines
-- nnoremap <A-j> :m .+1<CR>==
-- nnoremap <A-k> :m .-2<CR>==
-- inoremap <A-j> <Esc>:m .+1<CR>==gi
-- inoremap <A-k> <Esc>:m .-2<CR>==gi
-- vnoremap <A-j> :m '>+1<CR>gv=gv
-- vnoremap <A-k> :m '<-2<CR>gv=gv
map('n', '<A-up>', ':m .-2<CR>==')
map('n', '<A-down>', ':m .+1<CR>==')
map('v', '<A-up>', ':m \'>-2<CR>gv=gv')
map('v', '<A-down>', ':m \'>+1<CR>gv=gv')
map('i', '<A-up>', '<Esc>:m .-2<CR>==gi')
map('i', '<A-down>', '<Esc>:m .+1<CR>==gi')
---------------------------------------------------------
-- Applications and Plugins shortcuts
-- Terminal mappings
map('n', '<C-t>', ':Term<CR>', { noremap = true })  -- open
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit
-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
-----------------------------------------------------------
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file
-- Tagbar
map('n', '<leader>z', ':TagbarToggle<CR>')          -- open/close
-- Bufferline
map ('n', '<leader>[', ':BufferLinePick<CR>')
map ('n', '<leader>]', ':BufferLinePickClose<CR>')

map ('n', '<A-right>', ':BufferLineCycleNext<CR>')
map ('n', '<A-left>', ':BufferLineCyclePrev<CR>')
-- Telescope
map('n', '<leader>tg', ':Telescope live_grep<CR>')
map('n', '<leader>tb', ':Telescope buffers<CR>')
map('n', '<leader>th', ':Telescope help_tags<CR>')


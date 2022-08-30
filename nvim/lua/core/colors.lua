-- $HOME/.config/nvim/lua/core/colors.lua
-----------------------------------------------------------
-- Color schemes configuration file

local status_ok, color_scheme = pcall(require, 'catppuccin')
if not status_ok then
  return
end

local cat_colors = require("catppuccin.palettes").get_palette()

color_scheme.setup({
	dim_inactive = {
		enabled = true,
		shade = "dark",
		percentage = 0.15,
	},
	transparent_background = true,
	term_colors = false,
	compile = {
		enabled = false,
		path = vim.fn.stdpath "cache" .. "/catppuccin",
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = { "italic","bold" },
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {"bold"},
		types = { "bold" },
		operators = {},
	},
	integrations = {
		treesitter = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "bold" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
		coc_nvim = false,
		lsp_trouble = false,
		cmp = true,
		lsp_saga = false,
		gitgutter = false,
		gitsigns = true,
		leap = false,
		telescope = true,
		nvimtree = {
			enabled = true,
			show_root = true,
			transparent_panel = true,
		},
		neotree = {
			enabled = false,
			show_root = true,
			transparent_panel = false,
		},
		dap = {
			enabled = false,
			enable_ui = false,
		},
		which_key = false,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = true,
		},
		dashboard = true,
		neogit = false,
		vim_sneak = false,
		fern = false,
		barbar = false,
		bufferline = true,
		markdown = true,
		lightspeed = false,
		ts_rainbow = false,
		hop = false,
		notify = true,
		telekasten = true,
		symbols_outline = true,
		mini = false,
		aerial = false,
		vimwiki = true,
		beacon = true,
	},
	color_overrides = {},
	highlight_overrides = {},
  custom_highlights = {
    LineNr = {
      fg = cat_colors.yellow,
      bg = cat_colors.blackfire,
    }
  },
})

color_scheme.load()
-- statusline color schemes:
-- import with: require('colors').colorscheme_name
local M = {}

M.catppuccin = {
  bg = cat_colors.lavender,
  fg = cat_colors.yellow,
}
-- Theme: OneDark (dark)
-- Colors: https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/palette.lua
M.onedark_dark = {
  bg = '#282c34',
  fg = '#b2bbcc',
  pink = '#c678dd',
  green = '#98c379',
  cyan = '#56b6c2',
  yellow = '#e5c07b',
  orange = '#d19a66',
  red = '#e86671',
}

-- Theme: Monokai (classic)
-- Colors: https://github.com/tanvirtin/monokai.nvim/blob/master/lua/monokai.lua
M.monokai = {
  bg = '#202328', --default: #272a30
  fg = '#f8f8f0',
  pink = '#f92672',
  green = '#a6e22e',
  cyan = '#66d9ef',
  yellow = '#e6db74',
  orange = '#fd971f',
  red = '#e95678',
}

-- Theme: Rosé Pine (main)
-- Colors: https://github.com/rose-pine/neovim/blob/main/lua/rose-pine/palette.lua
-- color names are adapted to the formats above
M.rose_pine = {
  bg = '#111019', --default: #191724
  fg = '#e0def4',
  pink = '#eb6f92',
  green = '#9ccfd8',
  cyan = '#31748f',
  yellow = '#f6c177',
  orange = '#2a2837',
  red = '#ebbcba',
}

return M


return {

--	{
--		"morhetz/gruvbox",
--		lazy = false, -- make sure we load this during startup if it is your main colorscheme
--		priority = 1000, -- make sure to load this before all the other start plugins
--		config = function()
--			-- load the colorscheme here
--      			vim.cmd([[colorscheme gruvbox]])
--		end,
--	},

--	{
--		"lunarvim/darkplus.nvim",
--		lazy = false, -- make sure we load this during startup if it is your main colorscheme
--		priority = 1000, -- make sure to load this before all the other start plugins
--		config = function()
--			-- load the colorscheme here
--			vim.cmd([[colorscheme darkplus]])
--		end,
--	},

	{
		"Mofiqul/vscode.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.o.background = 'dark'

			local c = require('vscode.colors').get_colors()
			require('vscode').setup({

				-- Enable transparent background
	    		transparent = false,
				-- Enable italic comment
				italic_comments = true,
				-- Disable nvim-tree background color
				disable_nvimtree_bg = true,
				-- Override colors (see ./lua/vscode/colors.lua)
					color_overrides = {
					vscLineNumber = '#FFFFFF',
				},
					
				-- Override highlight groups (see ./lua/vscode/theme.lua)
				group_overrides = {
					-- this supports the same val table as vim.api.nvim_set_hl
					-- use colors from this colorscheme by requiring vscode.colors!
					Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
				}
			})
			require('vscode').load()
		end,
	},
}


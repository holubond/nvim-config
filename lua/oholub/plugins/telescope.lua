return {
	'nvim-telescope/telescope.nvim', tag = '0.1.2',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function() 
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})	-- Find Files
		vim.keymap.set('n', '<leader>fg', builtin.git_files, {})	-- Find Git
		vim.keymap.set('n', '<leader>fw', function()			-- Find Word
			builtin.grep_string({search = vim.fn.input("Grep > ")})
		end)
		
	end,
}

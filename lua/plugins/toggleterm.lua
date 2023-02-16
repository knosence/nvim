return {
    'akinsho/toggleterm.nvim',
    config = function()
	require('toggleterm').setup{

	    function(term)
		if term.direction == "horizontal" then
		    return 15
		elseif term.direction == "vertical" then
		    return vim.o.columns * 0.4
		end
	    end,

	    open_mapping = [[<C-\>]],
	    hide_number = false,
	    shade_filetypes = {},
	    shade_terminals = true,
	    start_in_insert = true,
	    insert_mappings = true,
	    presist_size = true,
	    -- direction = 'vertical' 'horizontal' 'window' 'float'
	    direction = 'horizontal',
	    close_on_exit = true,
	    float_opts = {
		-- border = 'single' 'double' 'shadow' 'curved'
		boarder = 'curved',
		winblend = 3,
		highlights = {
		    border = "Normal",
		    background = "Normal"
		}
	    }
	}
    end,

    vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], {noremap = true, silent = true}),
    vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], {noremap = true, silent = true}),
    vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], {noremap = true, silent = true}),
    vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], {noremap = true, silent = true}),
    vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], {noremap = true, silent = true}),
}

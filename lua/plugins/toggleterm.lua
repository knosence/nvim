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
    end
}

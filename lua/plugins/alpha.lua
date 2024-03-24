return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"       _______  _______  _______  ______    _______  __   __  ___   __   __ ",
			"       |  _    ||       ||  _    ||    _ |  |       ||  | |  ||   | |  |_|  |",
			"       | |_|   ||   _   || |_|   ||   | ||  |   _   ||  |_|  ||   | |       |",
			"       |       ||  | |  ||       ||   |_||_ |  | |  ||       ||   | |       |",
			"       |  _   | |  |_|  ||  _   | |    __  ||  |_|  ||       ||   | |       |",
			"       | |_|   ||       || |_|   ||   |  | ||       | |     | |   | | ||_|| |",
			"       |_______||_______||_______||___|  |_||_______|  |___|  |___| |_|   |_|",
			"",
			"",
			"                                     n__n_                                         ",
			"                                    /  = =\\                                       ",
			"                                   /   ._Y_)                                       ",
			'__________________________________/      "\\_______________________________________',
			"                                 (_/  (_,  \\                        o!O           ",
			'                                   \\      ( \\_,--""""--.                         ',
			"                             __..-,-`.___,-` )-.______.'                           ",
			"                           <'     `-,'   `-, )-'    >                              ",
			'                            `----._/      ( /"`>.--"                               ',
			'                                   "--..___,--"                                    ',
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "✎  -> New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("SPC ff" , "  -> Find file"),
      dashboard.button("SPC fg" , "⌕  -> Live grep"),
      dashboard.button("<F12>"  , "  -> Config" , ":vsplit | e $MYVIMRC"),
      dashboard.button("q"      , "󰅚  -> Quit NVIM", ":qa<CR>"),
		}

		alpha.setup(dashboard.opts)
	end,
}

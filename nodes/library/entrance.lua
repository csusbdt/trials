ui_menu.date    = "June 12 afternoon"
ui_dialog.bg    = 'bg/schoolFiller.jpg'
ui_dialog.lg    = 'lg/Ruby.png'
ui_dialog.sm    = 'sm/MC.png'
ui_dialog.n	= 'RUBY'
ui_dialog.d     = { "Hi." }
ui_dialog.m     = 'music/Overworld.wav'

draw()

set_next({
	{ d = { "I saw you from the second floor." } },
	{ d = { "I came down to talk to you about something." } },
	{ d = { "So what are you doing in the library?" } },
	{ n = 'DAMIEN', d = { "OK Will, I'll take over from here." }, lg = 'lg/Damien.png' },
	{ d = { "So get lost." }, lg = 'lg/DameAnnoy.png' },
	{ n = 'CECILIA', d = { "I don't know what you guys are talking about." }, lg = 'lg/Damien.png', 
		c = {	
			{ t = "Go to Student Center.", f = next_node_function("nodes/center/entrance.lua") },
			{ t = "Stay in library." }
		}
	},
	{ d = { "I need to study." }, lg = 'lg/Damien.png' },
	{ d = { "THE END" }, lg = '', bg = '', next = function() end }
})


menu.date    = "June 12 afternoon"
dialog.bg    = 'bg/schoolFiller.jpg'
dialog.lg    = 'lg/Ruby.png'
dialog.sm    = 'sm/MC.png'
dialog.name  = 'RUBY'
dialog.d     = { "Hi." }
dialog.m     = 'music/Overworld.wav'

draw()

set_next({
	{ d = { "I saw you from the second floor." } },
	{ d = { "I came down to talk to you about something." } },
	{ d = { "So what are you doing in the library?" } },
	{ name = 'DAMIEN', d = { "OK Will, I'll take over from here." }, lg = 'lg/Damien.png' },
	{ d = { "So get lost." }, lg = 'lg/DameAnnoy.png' },
	{ name = 'CECILIA', d = { "I don't know what you guys are talking about." }, lg = 'lg/Damien.png', 
		c = {	
			{ t = "Go to Student Center.", f = next_node_function("nodes/center/entrance.lua") },
			{ t = "Stay in library." }
		}
	},
	{ d = { "I need to study." }, lg = 'lg/Damien.png' },
	{ d = { "THE END" }, lg = '', bg = '', next = function() end }
})


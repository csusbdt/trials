ui.date  = "June 16 afternoon"
ui.bg    = 'bg/schoolFiller.jpg'
ui.lg    = 'lg/Ruby.png'
ui.sm    = 'sm/MC.png'
ui.n     = 'RUBY'
ui.d     = { "Hi." }
ui.m     = 'music/Overworld.wav'

log()

sequence({
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


ui.bg    = 'bg/cecilias_room_night.jpg'
ui.lg    = 'lg/ghost_smile.png'
ui.sm    = 'sm/MC.png'
ui.n     = 'RUBY'
ui.d     = { "Hi." }
ui.m     = 'music/Overworld.wav'

next_time()

log()

sequence({
	{ d = { "I saw you from the second floor." } },
	{ d = { "I came down to talk to you about something." } },
	{ d = { "So what are you doing in the library?" } },
	{ n = 'DAMIEN', d = { "OK Will, I'll take over from here." }, lg = 'lg/ghost_shock.png' },
	{ d = { "So get lost." } },
	{ n = 'CECILIA', d = { "I don't know what you guys are talking about." }, 
		c = {	
			{ t = "Go to Student Center.", f = next_node_function("nodes/center/entrance.lua") },
			{ t = "Stay in library." }
		}
	},
	{ d = { "I need to study." } },
	{ d = { "THE END" }, lg = '', bg = '', next = function() end }
})


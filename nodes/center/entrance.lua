ui.date  = "June 13 afternoon"
ui.bg    = 'bg/cecilias_room_day.jpg'
ui.lg    = 'lg/ghost_smile.png'
ui.sm    = 'sm/MC.png'
ui.n     = 'RUBY'
ui.d     = { "Hi." }
ui.m     = nil

log()

sequence({
	{ d = { "Good idea to get away fro the at creep." } },
	{ n = 'CECILIA', d = { "He's really a nice guy." } },
	{ d = { "THE END" }, lg = '', bg = '', next = function() end }
})


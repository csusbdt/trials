-- Initialize game states.

-- Initialize dispositions.
gs.kaira   = 0
gs.ruby    = 0
gs.lily    = 0
gs.damien  = 0
gs.wilhelm = 0
gs.jessie  = 0
gs.erika   = 0

-- Initialize date and time.
gs.month = 'Sep'
gs.day   = 12
gs.dow   = 'Mon'
gs.time  = 'morning'

ui.bg    = 'bg/cecilias_room_day.jpg'
ui.lg    = 'lg/ghost_shock.png'
ui.sm    = 'sm/MC.png'
ui.n     = 'CECILIA'
ui.d     = { "I'm Cecilia.", "The hero of this story." }

log()

sequence({
	{ n = 'DAMIEN', d = { "I'm Damien.", "The villain." } },
	{ n = 'SYSTEM', d = { "Portrait test.", "sm = 400 x 600", "lg = 800 x 1300" }, lg = '', sm = '' }, 
	{ d = { "I am every where." }, sm = 'sm/MC_shock.png', lg = 'lg/ghost_smile.png' },
	{ n = 'CECILIA', d = { "OK." } },
	{ d = { "Bye." }, next = next_node_function('nodes/library/entrance.lua') }
})


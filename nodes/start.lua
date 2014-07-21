ui.date  = "June 13 morning"
ui.bg    = 'bg/cecilias_room.jpg'
ui.lg    = 'lg/ghost_smile.png'
ui.sm    = 'sm/MC.png'
ui.n     = 'CECILIA'
ui.d     = { "I'm Cecilia.", "The hero of this story." }

log()

sequence({
	{ n = 'DAMIEN', d = { "I'm Damien.", "The villain." } },
	{ n = 'SYSTEM', d = { "Portrait test.", "sm = 400 x 600", "lg = 800 x 1300" }, lg = '', sm = '' }, 
	{ d = { "I am every where." }, sm = 'sm/MC.png', lg = 'lg/DameAnnoy.png' },
	{ n = 'CECILIA', d = { "OK." } },
	{ d = { "Bye." }, next = next_node_function('nodes/library/entrance.lua') }
})


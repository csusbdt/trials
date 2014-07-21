ui.date  = "June 13 morning"
ui.bg    = 'bg/cecilias_room.jpg'
ui.n     = 'SYSTEM'
ui.d     = { "Portrait test.", "sm = 400 x 600", "lg = 600 x 1200" }

log()

sequence({
	{ n = 'DAMIEN', d = { "I'm Damien.", "The villain." }, lg = 'lg/ghost_smile.png', sm = 'sm/MC.png' },
	{ d = { "I am every where." }, sm = 'sm/MC.png', lg = 'lg/DameAnnoy.png' },
	{ n = 'CECILIA', d = { "OK." } },
	{ d = { "Bye." }, next = next_node_function('nodes/test2.lua') }
})


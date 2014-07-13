ui.date  = "June 13 morning"
ui.bg    = 'bg/schoolFiller.jpg'
ui.lg    = 'lg/Damien.png'
ui.sm    = 'sm/MC.png'
ui.n     = 'CECILIA'
ui.d     = { "I'm Cecilia.", "The hero of this story." }

log()

sequence({
	{ n = 'DAMIEN', d = { "I'm Damien.", "The villain." } },
	{ d = { "I am every where." }, lg = 'lg/DameAnnoy.png' },
	{ n = 'CECILIA', d = { "OK." } },
	{ d = { "Bye." }, next = next_node_function('nodes/library/entrance.lua') }
})


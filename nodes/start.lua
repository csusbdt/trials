menu.date    = "June 12 morning"
dialog.bg    = 'bg/schoolFiller.jpg'
dialog.lg    = 'lg/Damien.png'
dialog.sm    = 'sm/MC.png'
dialog.name  = 'CECILIA'
dialog.d     = { "I'm Cecilia.", "The hero of this story." }

draw()

set_next({
	{ name = 'DAMIEN', d = { "I'm Damien.", "The villain." } },
	{ d = { "I am every where." }, lg = 'lg/DameAnnoy.png' },
	{ name = 'CECILIA', d = { "OK." } },
	{ d = { "Bye." }, next = next_node_function('nodes/library/entrance.lua') }
})


ui_menu.date    = "June 13 morning"
ui_dialog.bg    = 'bg/schoolFiller.jpg'
ui_dialog.lg    = 'lg/Damien.png'
ui_dialog.sm    = 'sm/MC.png'
ui_dialog.n     = 'CECILIA'
ui_dialog.d     = { "I'm Cecilia.", "The hero of this story." }

draw()

set_next({
	{ n = 'DAMIEN', d = { "I'm Damien.", "The villain." } },
	{ d = { "I am every where." }, lg = 'lg/DameAnnoy.png' },
	{ n = 'CECILIA', d = { "OK." } },
	{ d = { "Bye." }, next = next_node_function('nodes/library/entrance.lua') }
})


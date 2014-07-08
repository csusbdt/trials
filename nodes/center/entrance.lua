ui_menu.date    = "June 12 afternoon"
ui_dialog.bg    = 'bg/schoolFiller.jpg'
ui_dialog.lg    = 'lg/Ruby.png'
ui_dialog.sm    = 'sm/MC.png'
ui_dialog.n     = 'RUBY'
ui_dialog.d     = { "Hi." }
ui_dialog.m     = nil

draw()

set_next({
	{ d = { "Good idea to get away fro the at creep." } },
	{ n = 'CECILIA', d = { "He's really a nice guy." } },
	{ d = { "THE END" }, lg = '', bg = '', next = function() end }
})


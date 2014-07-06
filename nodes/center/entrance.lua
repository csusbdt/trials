menu.date    = "June 12 afternoon"
dialog.bg    = 'bg/schoolFiller.jpg'
dialog.lg    = 'lg/Ruby.png'
dialog.sm    = 'sm/MC.png'
dialog.name  = 'RUBY'
dialog.d     = { "Hi." }

draw()

set_next({
	{ d = { "Good idea to get away fro the at creep." } },
	{ name = 'CECILIA', d = { "He's really a nice guy." } },
	{ d = { "THE END" }, lg = '', bg = '', next = function() end }
})


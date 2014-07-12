ui.date  = "June 12 afternoon"
ui.bg    = 'bg/schoolFiller.jpg'
ui.lg    = 'lg/Ruby.png'
ui.sm    = 'sm/MC.png'
ui.n     = 'RUBY'
ui.d     = { "Hi." }
ui.m     = nil

ui_log.update()

sequence({
	{ d = { "Good idea to get away fro the at creep." } },
	{ n = 'CECILIA', d = { "He's really a nice guy." } },
	{ d = { "THE END" }, lg = '', bg = '', next = function() end }
})


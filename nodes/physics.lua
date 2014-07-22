return {
	{
		bg = '',
		sm = 'sm/MC.png',
		d  = { "It's physics." }
	},
	{ d = { "I'm here." } },
	{ 
		f = function() 
			ui.reset()
			ui.d = { "THE END" }
			next = function() end 
		end
	}
}


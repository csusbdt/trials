add({ bg = bg.physics, sm = sm.mc, s = sn.door, d = { "It's physics." } })

add({ d = { "Nothing happens." } })

add({ d = { "But later there's lab." } })

add({ d = { "In the lab, Cecilia had to pair up with someone else,", "and gets stuck with Damien." } })

add({ d = { "The two of them have a small spat,", "it seems this is the start of a really harsh partnership." } })

add({ 
	d = { "It's at the end of the disagreement." },
	c = {
		{ t = "Be the bigger man.", f = function()
			gs.damien = gs.damien - 70 
		end },
		{ t = "Just ignore him.", f = function() 
			gs.damien = gs.damien - 50
		end }
	} 
})

add({ bg = bg.cecilia_room_day, f = next_time, d = { "Leave physics lab." } })

add({ d = { "Talk with Erika." } })

add({ 
	f = function() 
		ui.reset()
		ui.d = { "THE END" }
	end
})



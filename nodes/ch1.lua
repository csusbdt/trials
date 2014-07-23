gs.month = 'Sep'
gs.day   = 12
gs.dow   = 'Mon'
gs.time  = 'morning'

add({
	sm = 'sm/MC.png',
	bg = 'bg/erickas_room.jpg',
	d  = { "Cecilia is running down the street, late for class as normal." }
})

add({ 
	d = {	"Normally, this wouldn’t bother her,", 
		"but if one is late for class the first day,", 
		"you get dropped." } 
})

add({ lg = 'lg/ghost_shock.png', d = { "She accidentally bumps into a strange girl." } })

add({ d = { "Cecilia didn't notice at the time, but she broke the girl's vase." } })

add({ n = 'STRANGE GIRL', d = { "Owww...." } })

add({ n = 'CECILIA', sm = 'sm/MC_shock.png', d = { "Owww!" } })

add({ d = { "Watch where you’re going!" } })

add({ d = { "Geez, you’re going to make me late!" } })

add({ n = 'STRANGE GIRL', sm = 'sm/MC.png', d = { "...S-sorry! I’m sorry! I..." } })

add({ d = { "..." } })

add({ 
	n = '', 
	d = { "The strange girl notices her broken vase and starts to cry." },
	c = {
		{ t = "Apologize and be late.", f = function() gs.ruby = -40 end },
		{ t = "Leave the girl.", f = function() 
			gs.lily = -60
			gonode("nodes/physics.lua")
		end }
	}
})

add({ n = 'CECILIA', sm = 'sm/MC.png', d = { "I'm sorry." } })

add({ lg = 'lg/ghost_smile.png', d = { "I see that I broke your vase." } })

add({ 
	f = function() 
		ui.reset()
		ui.d = { "THE END" }
	end
})


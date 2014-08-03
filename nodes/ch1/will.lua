-- Scene with Will

add({
	n = '',
	lg = '',
	sm = sm.mc,
	bg = bg.cecilia_room_day,
	f = next_morning,
	d = "I had a good sleep."
})

add({ d = "I'm going out." })

add({ bg = bg.sidewalk_with_campus, d = "It's such a nice day today." })

add({ n = 'WILL', lg = lg.will, d = "Hi. I'm Will." })

add({ n = 'CECILIA', d = { "Hi." } })

add({ n = '', d = "Discussion..." })

add({ 
	n = '', 
	d = { "You decide between 2 choices." },
	c = {
		{ t = "choice 1", f = function() gs.will = gs.will + 10 end, node = 'nodes/ch1/will_a.lua' },
		{ t = "choice 2", f = function() gs.will = gs.will + 20 end, node = 'nodes/ch1/will_b.lua' },
	}
})

finish = function()
	add({ d = "Good bye Will." })
	add({ 
		n    = '', 
		lg   = '', 
		bg   = bg.cecilia_room_day, 
		d    = "I had lunch and now it's afternoon.", 
		f    = next_afternoon,
		node = 'nodes/ch1/night2.lua' 
	})
end



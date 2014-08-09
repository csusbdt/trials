
add({ n = '', bg = bg.lecture_hall, sm = sm.mc, d = {"The Next Day in Physics..."} })

add({ n = 'CECILIA', d = {"(I made sure to wake up extra early... But I may have came", "too early.)"} })

add({ d = {"(There's only a few people in the lecture hall, one being", "Damien...)"} })

add({ lg = lg.damien, d = {"(He sat in the same seat he sat in on Monday, the one reight", "next to the one I sat in...)"} })

add({ n = '', d = {"You shrugged and decided to sit in the same seat as Monday..."} })

add({ d = {"Damien noticed and immediately put his head on the desk."} })

add({ n = 'CECILIA', sm = sm.mc, d = {"(It looks like he's still in a bad mood from Monday...)"} })


add({  
	d = { "(Even if, we're lab partners, so I should try to get along", "with him..." },
	c = {
		{ t = "Apologize D:", f = function() gs.damien = gs.damien + 20 end, node = 'nodes/ch1/day3/damien_forced_encounter_a.lua' end },
		{ t = "Ignore him >.>", f = function() gs.damien = gs.damien + 10 end, node = 'nodes/ch1/day3/damien_forced_encounter_b.lua' end }
	}
})


add({ n = 'DAMIEN', lg = lg.damien, sm = sm.mc, d = "Hi." })

add({ n = 'CECILIA', sm = sm.mc_shock, d = "I wasn't expecting to see you today." })

add({ n = '', sm = sm.mc, d = "Some discussion..." })

add({ 
	n = '', 
	d = { "You decide." },
	c = {
		{ t = "choice 1", f = function() gs.damien = gs.damien + 30 end, node = 'nodes/ch1/damien_forced_encounter_a.lua' },
		{ t = "choice 2", f = function() gs.damien = gs.damien + 20 end, node = 'nodes/ch1/damien_forced_encounter_b.lua' }
	}
})



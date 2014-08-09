-- Trivial night time dialog 

add({ 
	n = '', 
	lg = '', 
	bg = bg.cecilia_room_night, 
	sm = sm.mc, 
	f = next_night, 
	d = { "After Dinner..." } 
})

add({ n = 'GHOST', lg = lg.ghost, d = "Welcome back!" })

add({ n = 'CECILIA', d = "Hey, did you remember anything?" })

add({ n = 'GHOST', d = {"No, not really. I'm gonna keep trying though.!"} })

add({ n = 'CECILIA', d = {"Okay. I guess I'll get ready for tomorrow..."} })

add({ n = '', bg = '', lg = '', sm = '', d = {"..."} })

add({ d = {"....."}, node = 'nodes/ch1/day3/damien_forced_encounter.lua' })


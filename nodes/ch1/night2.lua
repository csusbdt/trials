-- Trivial night time dialog 

add({ 
	n = '', 
	lg = '', 
	bg = bg.cecilia_room_night, 
	sm = sm.mc, 
	f = next_night, 
	d = { "Some trival conversion...", "..." } 
})

add({ d = "Time for sleep." })

add({ bg = '', d = "Zzzzzzzzzz." })

add({ bg = bg.cecilia_room_day, f = next_morning, d = "I had a good sleep." })

add({ d = "I'm going out." })

add({ bg = bg.sidewalk_with_campus, d = "It's nice outside.", node = 'nodes/ch1/damien_forced_encounter.lua' })


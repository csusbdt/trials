-- Trivial night time dialog 

add({ 
	n  = '', 
	lg = '', 
	sm = sm.mc, 
	bg = bg.cecilia_room_night, 
	f  = next_night, 
	d  = { "It's night time." } 
})

add({ d = { "Unimportant discussion with someone." } })

add({ d = { "I will talk with Will in the morning." } })

add({ d = "time to sleep." })

add({ bg = '', d = "Zzzzzzzzz.", node = 'nodes/ch1/will.lua' })


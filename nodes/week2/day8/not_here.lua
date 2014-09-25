--You decided to look for Damien, but he's nowhere to be found...

add({ n = 'CECILIA', d = {"(I should look around a bit. Maybe I'll find Damien lounging around", "somewhere...)"} })

add({ n = '', d = {"..."}, bg = '' })

add({ bg = bg.physics, d = {"You went around campus, exploring almost every building you could."} })

add({ d = {"...But, you never encounter Damien, or anyone else you know, either."} })

add({ 
	d = {"After checking your phone for the time, you realized it was time for your next", "class. You head over there and go through your next set of classes."}, 
	node = 'nodes/week2/day8/night8.lua', 
	f = next_time 
})
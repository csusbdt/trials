--Skip writing cause nothing happens. Less writing for me! :D
--Ruby isn't here
--Note to self: in night16.lua, scene with Will.

add({ n = '', bg = '', lg = '', d = {"The next day..."} })

add({ bg = bg.lecture_hall, d = {"Writing class came and went without any problems and before you knew it, it was", "time for your break."} })

add({ 
	n = 'CECILIA', 
	bg = bg.physics, 
	d = {"(Huh, break already... What should I do today then?)"},
	f = next_time,
	c = {
		{t = "Return to the Dorms.", node = 'nodes/week3/day16/dorms.lua'},
		{t = "Wander around.", node = 'nodes/week3/day16/grassy_area.lua'},
		{t = "Go to the Cafe.", node = 'nodes/week3/day16/cafe.lua'}
	}
})
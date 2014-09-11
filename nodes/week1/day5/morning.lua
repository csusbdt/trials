--Morning.

add({ n = '', d = {"The next day "}, bg = bg.cecilia_room_day })

add({ d = {".........."} })

add({ d = {".................."} })

add({ bg = bg.lecture_hall, d = {"When you get to your Physics class, Damien was not there."} })

add({ d = {"..."} })

add({ d = {"Class has started and he's still not here."} })

add({ d = {"Class was boring, but you kept wondering where Damien could've been."} })

add({ n = 'CECILIA', d = {"I don't really care... I only have lab with him on Wednesday anyways..."}, f = next_time })

add({ n = '', bg = bg.physics, d = {"Freetime!"} })

add({ 
	n = 'CECILIA', 
	d = {"Alright, so what am I going to do today?"},
	c = {
		{t = "Go to the Cafe.", node = 'nodes/week1/day5/cafe.lua'},
		{t = "Go to the Art Studio.", node = 'nodes/week1/day5/art.lua'},
		{t = "Explore Around.", node = 'nodes/week1/day5/not_here.lua'}
	}
})

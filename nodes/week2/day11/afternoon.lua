--Nothing happened in your writing course..

add({ n = '', bg = '', d = {"Class came and went."} })

add({ 
	n = 'CECILIA', 
	d = {"(Okay, what should I do today?"}, 
	f = next_time,
	bg = bg.physics,
	c = {
		{t = "Go to the Grassy Area.", node = 'nodes/week2/day11/grassy_area.lua'},
		{t = "Go to the Cafe.", f = function() gs.ruby = gs.ruby + 10, node = 'nodes/week2/day11/cafe.lua'},
		{t = "Go to the Dorms.", node = 'nodes/week2/day11/dorms.lua'}
	}
})
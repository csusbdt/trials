--end of morning encounter

add({ bg = bg.lecture_hall, n = 'WILLIAM', d = {"Huh, we're here already. After you."} })

add({ n = 'CECILIA', d = {"Thanks."} })

add({ n = '', lg = '', d = {"Class came and went."}, f = next_time })

add({ 
	n = 'CECILIA', 
	d = {"What should I do for my break?"},
	c = {
		{t = "Go to the Cafe", node = 'nodes/week1/day4/cafe.lua'},
		{t = "Take a stroll", node = 'nodes/week1/day4/grassy.lua'},
		{t = "Go to your Dorm Room", node = 'nodes/week1/day4/dorms.lua'}
	}
})
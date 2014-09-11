--encounter Will.

add({ n = 'CECILIA', d = {"Well since it's lunchtime, I should get something to eat."} })

add({ n = '', bg = bg.cafe, d = {"At the cafe..."} })

add({ d = {"The Cafe today was a little less crowded than normal."} })

add({ n = 'CECILIA', d = {"(I wonder if it's because it's Friday...)"} })

add({ d = {"(Oh! There's William!)"} })

add({ n = '', lg = lg.will, d = {"You see William sitting alone at a table reading a small book."} })

add({ n = 'CECILIA', d = {"(I should go say hello, or something.)"} })

add({ n = 'CECILIA', d = {"Hey Will! What's up?"} })

add({ n = 'WILLIAM', d = {"Will? Heheh, nothing much. Just reading this book for a class. Are", "you going to go get lunch?"} })

add({ n = 'CECILIA', d = {"Yes, uh..."} })

add({ 
	n = 'CECILIA',
	d = {"(What now...?)"},
	c = {
		{t = "Talk with him.", f = function() gs.will = gs.will + 5, node = 'nodes/week1/day5/talk_with_will.lua'},
		{t = "Invite him to lunch.", node = 'nodes/week1/day5/lunch.lua'},
		{t = "Leave him.", f = function() gs.will = gs.will - 3, node = 'nodes/week1/day5/leave_will.lua'}
	}
})
--General Encounter Will. These types of smaller encounters are indeed gonna be a thing.

add({ n = 'CECILIA', d = {"(Food! FOOD!)"} })

add({ n = '', bg = '', d = {"..."} })

add({ bg = bg.cafe, d = {"At the cafe..."} })

add({ n = 'CECILIA', d = {"(Oh, it's William! I should go talk to him for a bit...)"} })

add({ d = {"William, hey!"} })

add({ n = 'WILLIAM', d = {"Hello there! How's your day today?"} })

add({ 
	n = 'CECILIA', 
	d = {"Well, it's going..."},
	c = {
		{t = "Good!", f = function() gs.will = gs.will + 10 end, node = 'nodes/week3/day15/will_good.lua'},
		{t = "Bad...", f = function() gs.will = gs.will + 5 end, node = 'nodes/week3/day15/will_bad.lua'}
	}
}) 
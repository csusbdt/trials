--Damien isn't here, skip to afternoon. Can meet Ruby or Will. Time change on night12.lua

add({ n = '', bg = '', d = {"..."} })

add({ d = {"The next day..."} })

add({ bg = bg.lecture_hall, n = 'CECILIA', d = {"(Damien's not here today... Well, at least it isn't lab day today.)"} })

add({ 
	bg = bg.physics, 
	d = {"(Alright! Break time! What should I do?)"},
	c = {
		{t = "Go to the Art Studio.", node = 'nodes/week2/day12/art.lua'},
		{t = "Go to the Cafe.", f = function() gs.will = gs.will + 5 end, node = 'nodes/week2/day12/cafe.lua'},
		{t = "Look for Damien.", node = 'nodes/week2/day12/not_here.lua'}
	}
})
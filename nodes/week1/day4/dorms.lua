--Encounter Will!

add({ n = 'CECILIA', d = {"(I don't really have money to be spending for lunch... I wonder if there's", "any leftovers at home.)"} })

add({ d = {"(Even if there isn't leftovers, I got some instant noodles, so it should", "be fine. I'll head home for lunch.)"} })

add({ n = '', d = {"As you exiting the classroom, you ran into William."} })

add({ n = 'WILLIAM', lg = lg.will, d = {"Hey, where are you off to?"} })

add({ n = 'CECILIA', d = {"Oh, I'm gonna go eat lunch in my dorm room, you?"} })

add({ n = 'WILLIAM', d = {"Heheh, same! Let me escort you again then."} })

add({ n = 'CECILIA', d = {"You live in Building 7 too?"} })

add({ n = 'WILLIAM', d = {"Yea, that's right."} })

add({ n = '', bg = bg.sidewalk_with_campus, d = {"After walking and talking a little bit..."} })

add({ n = 'CECILIA', d = {"(Oh yea, maybe I should ask him a bit about it...)"} })

add({ 
	d = {"But damnit, she mentioned two guys, a wannabe actor and a wannabe rock star... Which", "one could he be?"},
	c = {
		{t = "Ask about the Acting.", f = function() gs.will = gs.will + 15 end, node = 'nodes/week1/day4/acting.lua'},
		{t = "Ask about the Rock Star.", f = function() gs.will = gs.will + 10 end, node = 'nodes/week1/day4/rockstar.lua'}
	}
})
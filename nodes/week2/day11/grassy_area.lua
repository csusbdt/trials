--More Damien. 

add({ n = 'CECILIA', d = {"(I guess I'll just waste time outside this afternoon."} })

add({ n = '', bg = '', d = {"..."} })

add({ bg = bg.grassy_area, d = {"In the grassy area..."} })

add({ n = 'CECILIA', d = {"(Hm, everything seems to have died down... I guess it's to be expected since", "it's the second week, but...)"} })

add({ d = {"(It's kind of sad that nothing's going on right now...)"} })

add({ n = '', d = {"After wandering around a bit..."} })

add({ n = 'CECILIA', d = {"(Oh, is that Damien?)"} })

add({ n = '', lg = lg.damien_irritated, d = {"You see the irritable Damien laying down under a tree reading a book."} })

add({ n = 'CECILIA', d = {"(Well, I'm bored. I guess I'll go see what he's up to.)"} })

add({ 
	d = {"(Though, how should I approach him?)"},
	c = {
		{t = "Talk to him.", f = function() gs.damien = gs.damien - 5 end, node = 'nodes/week2/day11/damien_talk.lua'},
		{t = "Go study.", f = function() gs.damien = gs.damien + +5 end, node = 'nodes/week2/day11/damien_study.lua'}
	}
})
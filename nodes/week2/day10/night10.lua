--Nighttime, finally x.x

add({ n = '', lg = '', bg = bg.kitchen, d = {"Back in your dorm suite..."} })

add({ n = 'CECILIA', d = {"(Okay, I'm done with all of my nightly duties... What should I do now?)"} })

add({ 
	d = {"(I could go annoy some of my 'roomies' or go out tonight.)"},
	c = {
		{t = "Talk to Kaira.", node = 'nodes/week2/day10/kaira.lua'},
		{t = "Talk to Erika.", node = 'nodes/week2/day10/erika.lua'},
		{t = "Go out.", f = function() gs.will = gs.will + 5 end, node = 'nodes/week2/day10/library.lua'}
	}
})
--Go look for Damien. You can try to eat with him, and he'll agree (only because you brought good food.)
--Normally you need +30 dispostion, and the highest one can have at this point is +25
--so, I figured, eh... Close enough.

add({ n = '', d = {"As you were deciding where to go, you see Damien leave the Physical Science", "building and head over to the Social Science building."} })

add({ n = 'CECILIA', d = {"(Huh... I wonder what he's up to... I should follow him.)"} })

add({ d = {"(Adventure time!)"} })

add({ n = '', bg = '', d = {"BG Missing. Use your imagination~"} })

add({ d = {"In the Social Science building..."} })

add({ lg = lg.damien_irritated, d = {"You spot Damien sitting over in a study room. He pulled out a small lunch bag", "and starts to unpack his lunch."} })

add({ 
	n = 'CECILIA', 
	d = {"(Oh, he's just eating... Maybe I should...)"},
	c = {
		{t = "Talk to him.", f = function() gs.damien = gs.damien + 5 end, node = 'nodes/week2/day10/damien_chat.lua'},
		{t = "Eat with him.", node = 'nodes/week2/day10/damien_eat.lua'}
	}
})
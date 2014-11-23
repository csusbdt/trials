--Damien, average choices and conversation.

add({ n = 'CECILIA', d = {"(I guess I can look around campus for a bit...)"} })

add({ n = '', bg = '', d = {"..."} })

add({ bg = bg.grassy_area, d = {"After wondering around for a bit..."} })

add({ n = 'CECILIA', d = {"(Oh, there's Damien again...)"} })

add({ n = 'DAMIEN', lg = lg.damien_irritated, d = {"...Why do you come here so often?"} })

add({ n = 'CECILIA', d = {"What do you mean often? I'm just talking a walk around campus, that's all."} })

add({ n = 'DAMIEN', d = {"Uh huh..."} })

add({ n = 'CECILIA', d = {"So... what are you up to?"} })

add({ n = 'DAMIEN', d = {"I'm studying... There's a quiz tomorrow, isn't there?"} })

add({ n = 'CECILIA', d = {"Oh! So you actually do study?"} })

add({ n = 'DAMIEN', d = {"Hey... Watch what you're sayin'."} })

add({ 
	n = 'CECILIA', 
	d = {"Heheheh~ Alright, well since you're working so hard on studying, I'll..."},
	c = {
		{t = "Study with you.", f = function() gs.damien = gs.damien + 10 end, node = 'nodes/week3/day16/damien_study.lua'},
		{t = "Lend you my notes.", f = function() gs.damien = gs.damien + 5 end, node = 'nodes/week3/day16/damien_notes.lua'}
	}
})
--To damien, away~

add({ n = 'CECILIA', d = {"(Might as well go talk to Damien... We have a midterm next week, so I'm sure he wants to study a bit.)"} })

add({ n = '', bg = '', d = {"..."} })

add({ d = {"In the study area of the Social Science Building..."} })

add({ n = 'CECILIA', d = {"(Oh, there he is...)"} })

add({ lg = lg.damien_irritated, d = {"Hey Damien, what's up?"} })

add({ n = 'DAMIEN', d = {"Eating, what do you want?"} })

add({ 
	n = 'CECILIA', 
	d = {"(Eating, huh...?)"},
	c = {
		{t = "Let's Study.", f = function() gs.damien = gs.damien + 10 end, node = 'nodes/week3/day17/damien_study.lua'},
		{t = "Wanna Chat?", f = function() gs.damien = gs.damien + 5 end, node = 'nodes/week3/day17/damien_chat.lua'}
	}
})


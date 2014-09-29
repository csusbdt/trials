--Meet Damien.

add({ n = 'CECILIA', d = {"(Today's such a nice day... Maybe I should buy a sandwhich and go eat out on", "the grass?)"} })

add({ n = '', d = {"..."} })

add({ d = {"Out in the Grassy Area..."}, bg = bg.grassy_area })

add({ n = 'CECILIA', d = {"(Oh, there's Damien...)"} })

add({ n = '', d = {"You see Damien lying on the grass not far from you. He seems to be awake."} })

add({ n = 'CECILIA', d = {"(I should try to talk to him.)"} })

add({ d = {"Damien, hello."} })

add({ n = 'DAMIEN', d = {"Hmm? Oh, it's the nerd. How's class?"} })

add({ n = 'CECILIA', d = {"N-nerd? Who are you calling a nerd?!"} })

add({ n = 'DAMIEN', d = {"You, you dork. Now about class..."} })

add({ n = 'CECILIA', d = {"(Nerd, really...? This guy really knows how to get under my skin...)"} })

add({ 
	d = {"(But he is my partner... What should I do?)"},
	c = {
		{t = "Tease him back.", f = function() gs.damien = gs.damien + 10 end, node = 'nodes/week2/day9/tease_damien.lua'},
		{t = "Get angry.", f = function() gs.damien = gs.damien - 10 end, node = 'nodes/week2/day9/angry_damien.lua'}
	}
})
--You're up to rank 1, but you need more disposition to rank up... Welp, here ya go.

add({ n = '', d = {"On your way to your dorm, you see William walking a little ways ahead of you."} })

add({ n = 'CECILIA', lg = lg.will, d = {"(Oh! I should catch up to him!)"} })

add({ d = {"Hey, William! What's up?"} })

add({ n = 'WILLIAM', d = {"H-huh? Oh... Hello. I'm sorry, I was lost in thought... What are you up to?"} })

add({ n = 'CECILIA', d = {"Just going home... Let's walk the rest of the way."} })

add({ n = 'WILLIAM', d = {"Sure. Was there something you want to talk about with me?"} })

add({ n = 'CECILIA', d = {"Uh... Actually, yes! Do you know what the next assignment's gonna be about?"} })

add({ n = 'WILLIAM', d = {"Ah--ahahaha! Not fully. I know what kind of paper she wants, but not not the topic."} })

add({ d = {"Are you that excited to make me lunch?"} })

add({ n = 'CECILIA', d = {"Ha! I'm more excited for you to take me out to eat~."} })

add({ n = 'WILLIAM', d = {"Oh...? It sounds like you just want to go out on a date with me."} })

add({ n = 'CECILIA', d = {"Wh-what?!"} })

add({ 
	d = {"(A d-date!?)"},
	c = {
		{t = "How embarrassing.", f = function() gs.will = gs.will + 10 end, node = 'nodes/week2/day11/will_embarrassed.lua'},
		{t = "Tease him.", f = function() gs.will = gs.will + 5 end, node = 'nodes/week2/day11/will_tease.lua'}
	}
})
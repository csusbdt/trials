--Morning Encounter with Will

add({ n = '', bg = bg.sidewalk_with_campus, d = {"The next day..."} })

add({ n = 'CECILIA', d = {"I'm glad this class begins a little later than that physics", "class... I don't have to hurry and run into people."} })

add({ n = 'FAMILIAR VOICE', d = {"Oh hey. You're in one of my classes, right?"} })

add({ n = 'CECILIA', d = {"Huh?"} })
	
add({ n = '', d = {"You turned around and saw William, the TA for the class you have today."} })
	
add({ n = 'WILLIAM', lg = lg.will, d = {"I thought I recognized you, hello!"} })

add({ n = 'CECILIA', d = {"Oh, hi..."} })

add({ d = {"(He seems so friendly and energetic... Even though he made it seem", "as if I looked stupid enough to fail the class... He might not be so", "bad after all.)"} })

add({ n = 'WILLIAM', d = {"Heading over to class?"} })

add({ d = {"Mind if I escort you over there?"} })

add({ n = 'CECILIA', d = {"Sure... Why not?"} })

add({ n = '', d = {"After a few moments of silence as you two walk..."} })

add({ 
	n = 'CECILIA', 
	d = {"(Man, this is uncomfortable... Maybe I should try to start up a conversation?)"},
	c = {
		{t = "Ask about Tuesday", f = function() gs.will = gs.will - 10 end, node = 'nodes/week1/day4/morning_a.lua'},
		{t = "Make small talk", f = function() gs.will = gs.will + 5 end, node = 'nodes/week1/day4/morning_b.lua'},
		{t = "Talk about class", f = function() gs.will = gs.will + 5 end, node = 'nodes/week1/day4/morning_c.lua'}
	}
})
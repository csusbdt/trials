--Encounter Damien

add({ n = 'CECILIA', d = {"(Today is such a nice day. I should see what's going on around", "campus.)"} })

add({ n = '', bg = bg.grassy_area, d = {"You walked around campus for a bit. Since it was the the first week, the campus", "held a bunch of different events..."} })

add({ d = {"After wondering around a bit, you find yourself in a grassy area.", "The vegetation was well groomed and smelled of wet earth."} })

add({ n = 'CECILIA', d = {"(Hmm... This place is pretty peaceful. I could study or just relax here.)"} })

add({ n = '', d = {"As you walked, you heard soft snoring. You looked around and found Damien", "fast asleep in the grass."} })

add({ n = 'CECILIA', lg = lg.damien_eyes_closed, d = {"(Damien? I'm surprised to see him sleeping here, heheheh.)"} })

add({
	d = {"(He looks so at peace... What should I do?)"},
	c = {
		{t = "Wake him up.", f = function() gs.damien = gs.damien -10 end, node = 'nodes/week1/day4/wakeup.lua'  },
		{t = "Leave him be.", node = 'nodes/week1/day4/leave_damien.lua' },
		{t = "Stay with him.", f = function() gs.damien = gs.damien + 5 end, node = 'nodes/week1/day4/stay_with_damien.lua'}
	}
})
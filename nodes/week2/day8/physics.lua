--Damien encounter~

add({ n = '', bg = bg.lecture_hall, d = {"The next in Physics Lecture..."} })

add({ d = {"Today, the lecture was smaller since you were finishing a long chapter."} })

add({ n = 'CECILIA', d = {"Mmm! Yes, it feels so much better when you get out earlier!"} })

add({ n = 'DAMIEN', lg = lg.damien_irritated, d = {"Mhm..."} })

add({ n = '', d = {"Damien started to pack up..."} })

if gs.will_scene == 1 then
	add({ n = 'CECILIA', d = {"(Maybe I should try to talk to him... He could be the wannabe rockstar...)"} })
	
elseif gs.will_scene == 0 then
	add({ n = 'CECILIA', d = {"(Maybe I should try to talk to him... He could be one of the guys from Kaira's past..."} })

end

add({
	d = {"(How should I do that though? He's so irritable, it's kind of hard to make a", "conversation with him...)"},
	c = {
		{t = "Leave him.", node = 'nodes/week2/day8/leave_damien.lua'},
		{t = "Talk about the Weekend.", f = function() gs.damien = gs.damien + 5 end, node = 'nodes/week2/day8/weekend_talk_damien.lua'},
		{t = "Invite out to eat.", node = 'nodes/week2/day8/lunch_with_damien.lua'}
	}
})
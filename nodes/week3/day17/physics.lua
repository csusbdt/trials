--Lab and quiz today. Can rank up in lab with Damien to 2, or 3. 
--(Ranking up to 1 was forced on Monday of this week... So I don't have to redo it! :D

add({ n = '', bg = bg.lecture_hall, d = {"In lab..."} })

add({ d = {"Today's a quiz at the start of the class!"} })

add({ d = {"..."} })

add({ d = {"........"} })

add({ d = {"You think you did an alright job, though there was a few questions you were unsure of."} })

add({ bg = bg.physics_lab, lg = lg.damien_irritated, d = {"In the lab..."} })

if gs.damien_scene == 1 and gs.damien >= 0 then
	add({ 
		n = 'CECILIA', 
		d = {"(He's here! Alright, I won't let him get away this time!)"},
		node = 'nodes/week3/day17/damien1.lua'
		f = function()
			gs.damien = gs.damien + 5
			gs.damien_Scene = 2
		end
	})

elseif gs.damien_scene == 2 and gs.damien >= 30 then
	add({
		n = 'CECILIA',
		d = {"(Oh, he's here... Maybe I should try to get some more information out of him...)"},
		node = 'nodes/week3/day17/damien2.lua'
		f =  function()
			gs.damien = gs.damien + 5
			gs.damien_scene = 3
		end
	})

else
	add({ 
		n = 'CECILIA', 
		d = {"(He didn't ditch today's lab. Good... Maybe I should talk to him?)"}
		node = 'nodes/week3/day17/damien_normal.lua',
		f = function()
			gs.damien = gs.damien + 5
		end
	})

end 
--Time with Damien. Can only rank up to rank 1, 2, or 3.

add({ n = '', bg = bg.lecture_hall, d = {"Before class..."},f = next_time })

add({ lg = lg.damien, d = {"Damien was there early today."} })

if gs.damien_scene == 0 then
	add({ 
		n = 'CECILIA', 
		d = {"(I have to ask him about his childhood...)"},
		node = 'nodes/week3/day15/damien0.lua',
		f = function()
			gs.damien = gs.damien + 5
			gs.damien_scene = 1
		end
	})

elseif gs.damien_scene == 1 and gs.damien >= 0 then
	add({ 
		n = 'CECILIA', 
		d = {"(He's here! Alright, I won't let him get away this time!)"},
		node = 'nodes/week3/day15/damien1.lua'
		f = function()
			gs.damien = gs.damien + 5
			gs.damien_Scene = 2
		end
	})

elseif gs.damien_scene == 2 and gs.damien >= 30 then
	add({
		n = 'CECILIA',
		d = {"(Oh, he's here... Maybe I should try to get some more information out of him...)"},
		node = 'nodes/week3/day15/damien2.lua'
		f =  function()
			gs.damien = gs.damien + 5
			gs.damien_scene = 3
		end
	})

else
	add({ n = 'CECILIA', d = {"(Ugh, I don't feel like dealing with him right now... I'll try to find him later", "if I wanna talk to him later...)"} })
	add({ n = '', lg = '', bg = '', d = {"Class began a few minutes later..."} })
	add({ d = {"..."}, node = 'nodes/week3/day15/afternoon.lua', f = next_time })
end
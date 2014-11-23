--Can rank up with Will to rank 1, 2, or 3.

add({ n = 'CECILIA', d = {"(Eh, I'm not feeling the cafe food right now... And I think I still have some of", "that spaghetti too.)"} })

add({ d = {"(So I guess I'll go home for lunch today.)"} })

if gs.will_scene == 0 then
	add({
		n = '',
		d = {"..."},
		node = 'nodes/week3/day16/will0.lua'
	})

elseif gs.will_scene == 1 and gs.will >= 0 then
	add({
		n = '', 
		d = {"..."},
		node = 'nodes/week3/day16/will_rankup.lua',
		f = function() 
			gs.will_scene = 2
			gs.will = gs.will + 5
		end
	})

elseif gs.will_scene == 2 and gs.will >= 30 then
	add({
		n = '', 
		d = {"..."},
		node = 'nodes/week3/day16/will_rankup2.lua',
		f = function() 
			gs.will_scene = 3
			gs.will = gs.will + 5
		end
	})

else
	add({
		n = '',
		bg = bg.sidewalk_with_campus,
		d = {"..."},
		node = 'nodes/week2/day11/will_normal.lua',
		f = function()
			gs.will = gs.will + 5
	})

end
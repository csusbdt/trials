--You FINALLY meet with Will. Can rank up to 1 or 2. 

add({ n = 'CECILIA', d = {"(Those leftovers in the fridge are gonna go bad... I'm gonna go back and eat those.)"} })

if gs.will_scene == 0 then
	add({
		n = '',
		d = {"..."},
		node = 'nodes/week2/day11/will0.lua'
	})

elseif gs.will_scene == 1 then
	add({
		n = '',
		bg = bg.sidewalk_with_campus,
		d = {"..."},
		node = 'nodes/week2/day11/will1.lua'
	})

elseif gs.will_scene == 1 and gs.will >= 0 then
	add({
		n = '', 
		d = {"..."},
		node = 'nodes/week2/day11/will_rankup.lua',
		f = function() 
			gs.will_scene = 2
			gs.will = gs.will + 5
		end
	})
end
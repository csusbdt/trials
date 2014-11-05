--Checking for Rank 0 and 1 and now 2. Offer disposition.

add({ n = 'CECILIA', d = {"Well, I should visit Ruby for a little bit."} })

if gs.ruby_scene == 0 then 
	add({ 
		n = 'CECILIA', 
		bg = bg.paint_studio, 
		d = {"I don't really go there, but it should be a fine..."},
		node = 'nodes/week2/day10/ruby0.lua',
		f = function() 
			gs.ruby_scene = 1
		end
	})

elseif gs.ruby_scene == 1 and gs.ruby >= 0
	add({ 
		n = '', 
		bg = bg.paint_studio, 
		d = {"At the Art Studio..."},
		node = 'nodes/week2/day10/ruby_rank_up.lua',
		f = function() 
			gs.ruby_scene = 2 
		end
	})

elseif gs.ruby_scene == 2 and gs.ruby >= 30
	add({
		n = '',
		bg = bg.paint_studio,
		d = {"At the Art Studio..."},
		node = 'nodes/week2/day10/ruby_rank_up2.lua',
		f = function()
			gs.ruby = gs.ruby + 5
			gs.ruby_scene = 3
		end
	})

else
	add({
		n = '',
		bg = bg.paint_studio,
		d = {"At the Art Studio..."},
		node = 'nodes/week2/day10/normal_art_day.lua'
	})

end
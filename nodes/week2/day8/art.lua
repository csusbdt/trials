--Art studio. Checking for rank 1.

add({ n = 'CECILIA', d = {"Well, I should visit Ruby for a little bit."} })

if gs.ruby_scene == 0 then 
	add({ 
		n = 'CECILIA', 
		bg = bg.paint_studio, 
		d = {"I don't really go there, but it should be a fine..."},
		node = 'nodes/week2/day8/ruby0.lua',
		f = function() 
			gs.ruby_scene = 1
		end
	})

elseif gs.ruby_scene == 1 then
	add({ 
		n = '', 
		bg = bg.paint_studio, 
		d = {"At the Art Studio..."},
		node = 'nodes/week2/day8/ruby1.lua'
	})

elseif gs.ruby_scene == 1 and gs.ruby >= 0
	add({ 
		n = '', 
		bg = bg.paint_studio, 
		d = {"At the Art Studio..."},
		node = 'nodes/week2/day8/ruby_rank_up.lua',
		f = function() 
			gs.ruby_scene = 2 
		end 
	})
end
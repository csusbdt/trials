--Night3

add({ 
	n = 'CECILIA', 
	d = { "(I need to get out of my room. Any more studying", "and I'm sure to lose my mind!)" },
})

add({ 
	d = {"(Where should I go, though...?)"},
	c = {
		{ t = "Cafe", f = function() choice1() end },
		{ t = "Art Room", node = 'nodes/ch1/ruby_quest_start.lua' },
		{ t = "Library", f = function() choice2() end }
	}
})

choice1 = function()
	add({ d = {"(I should grab a snack. Good thing the cafe on campus", "is open til midnight."} })
	add({ n = '', d = {"Putting on your shoes, you head out onto campus to the cafe."} })
	add({ 
		bg = '', 
		d = {	"The cafe wasn't as dead as you thought it was going to be.", 
			"It seems a lot of people come here to get a late night snack." 
		} 
	})
	add({ n = 'CECILIA', d = { "(Hm... This looks yummy!)"} })
	add({ n = '', d = {"..."} })
	add({ d = {"You had a completely peaceful time going to the cafe tonight."} })
	add({ 
		n = 'CECILIA', 
		bg = bg.cecilia_room_night, 
		d = { "Time for sleep." }, 
		node = 'nodes/ch1/day4/morning_encounter.lua', 
		f = next_time 
	})
end

choice2 = function()
	add({ d = {"(Maybe I can find a good book to ease my mind", "in the library..."} })
	add({ n = '', d = {"Putting on your shoes, you head out onto campus to the library."} })
	add({ bg = '', d = {"The library was almost empty at this time of night."} })
	add({ n = 'CECILIA', d = {"(It's to be expected... No one needs to come here", "so early in the semester.)"} })
	add({ n = '', d = {"You take some time to look through shelves of your favorite", "genre."} })
	add({ d = {"..."} })
	add({ n = 'CECILIA', d = {"This looks interesting!"} })
	add({ n = '', d = {"You find a couple books that interest you and check them", "out before heading home."} })
	add({ d = {"..."} })
	add({ d = {"You had a completely peaceful time at the library tonight."} })
	add({ 
		n = 'CECILIA', 
		bg = bg.cecilia_room_night, 
		d = { "Time for sleep." }, 
		node = 'nodes/ch1/day4/morning_encounter.lua', 
		f = next_time 
	})
end


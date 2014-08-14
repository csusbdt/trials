--encounter with Damien in Social Studies

add({ d = {"I guess I just wander around for bit."} })

add({ d = {"The campus is so big, I'm sure there are many interesting", "things to do here!"} })

add({ n = '', bg = bg.physics, d = {"..."} })

add({ d = {"You approached a smaller building. After looking at a sign,", "you found out that this is the social studies building."} })

add({ n = 'CECILIA', d = {"Social Studies? I wonder what the classrooms look like in", "this building.."} })

add({ n = '', bg = '', d = {"((Missing BG, so deal with Darkness!))"} })

add({ d = {"You searched the building a bit, and the classrooms, pretty", "much looked like your standard classrooms..."} })

add({ n = 'CECILIA', d = {"Huh... Lame..."} })

add({ n = '', d = {"As you were about to head out you come across a study", "area on the second floor."} })

add({ d = {"There you find a familiar face..."} })

add({ n = 'CECILIA', d = {"(Damien!? What's he doing in a study area...?)"} })

add({ lg = lg.damien, d = {"(...Eating. Of course he wasn't studying...)"} })

add({ n = 'DAMIEN', d = {"Oh, it's you."} })

add({ n = '', d = {"It seems he noticed you spying on him eating..."} })

add({ n = 'CECILIA', d = {"'You'? I have a name you know..."} })

add({ n = 'DAMIEN', d = {"Too bad it's not worth remembering."} })

add({ 
	n = 'CECILIA',
	d = {"(Ugh, why must he always do this...?")},
	c = {
		{ t = "Chat with him. :)", f = function() gs.damien = gs.damien - 5 end, node = 'nodes/ch1/day3/day3_damien_a.lua' end },
		{ t = "Eat with him. :D", f = function() gs.damien = gs.damien - 10 end, node = 'nodes/ch1/day3/day3_damien_b.lua' end },
		{ t = "Talk about School. :3", f = function() gs.damien = gs.damien + 10 end, node = 'nodes/ch1/day3/day3_damien_c.lua' end}
	}
})
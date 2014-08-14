--Nighttime, Wednesday. Talking to anyone will result in small amount of dialogue.

add({ 
	n = '', 
	bg = bg.cecilia_room_night, 
	d = {"Nighttime, in your dorm. What would you like to do?"},
	c = {
		{ t = "Chat with Erika", f = function() choice1() end },
		{ t = "Chat with Kaira", f = function() choice2() end },
		{ t = "Go out.", node = 'nodes/ch1/day3/night_out.lua'}
	}
})

choice1 = function()
	add({ n = 'CECILIA', d = {"(I should see what Erika's up to.)"} })
	add({ bg = bg.erika_room, d = {"Yo, Erika. Wanna talk for a bit?"} })
	add({ n = 'ERIKA', d = {"Oh, hey! Yea, let's chat."} })
	add({ n = '', d = {"You spent some time with Erika, talking about a range", "of subjects before heading to bed."}, node = 'nodes/ch1/day4/morning_encounter.lua', f = next_time })
end

choice2 = function()
	add({ n = 'CECILIA', d = {"(I wonder if Kaira has found out anything...)"} })
	add({ d = {"Hey, Kaira. You there?"} })
	add({ n = '', lg = lg.ghost, d = {"Kaira materialized on your bed..."} })
	add({ n = 'KAIRA', d = {"Yes! I'm here!"} })
	add({ n = 'CECILIA', d = {"Do you remember anything?"} })
	add({ n = 'KAIRA', d = {"Hm... I think so... I think I remember that I", "really love burritos!"} })
	add({ lg = lg.ghost_smile, d = {"That burrito you ate earlier looked so yummy!"} })
	add({ n = 'CECILIA', d = {"Oh, so that's why I felt a small breath on my neck... You", "were sniffing my burrito when I went to take a bite!"} })
	add({ n = 'KAIRA', d = {"Heheh~ Sorry."} })
	add({ n = 'CECILIA', d = {"But seriously, you have to start thinking more", "on your past life."} })
	add({ n = 'KAIRA', lg = lg.ghost, d = {"Hm... Oh! R-righty... I will."} })
	add({ d = {"So, how was class?"} })
	add({ n = '', d = {"You spent the rest of the evening talking to Kaira", "about your day today before you went to sleep."}, node = 'nodes/ch1/day4/morning_encounter.lua', f = next_time })
end



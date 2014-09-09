--Nighttime, Wednesday. Talking to anyone will result in small amount of dialogue.

add({ 
	f = next_time,
	n = '', 
	lg = '',
	bg = bg.cecilia_room_night, 
	d = {"When you got back to your room after dinner... You saw Kaira fiddling", "around with something."}
	
})

add({ n = 'CECILIA', lg = lg.ghost, d = {"Hey, what are you doing, pipsqueak?"} })

add({ n = 'KAIRA', d = {"Who you callin' pipsqueak!?"} })

add({ n = 'CECILIA', d = {"You. Hey, is that my suitcase!?"} })

add({ n = 'KAIRA', d = {"Well, you weren't using it... so I thought I could."} })

add({ n = 'CECILIA', d = {"That's not how it goes... Also, what could a ghost have anyways?"} })

add({ d = {"A cracked marble, a ribbon..., some... piece of", "paper, and a broken... mask? What is this stuff?"} })

add({ n = 'KAIRA', d = {"They're my treasures! I forgot I had these on me."} })

add({ n = 'CECILIA', d = {"I'm not even going to try to understand how you still", "have these things..."} })

add({ n = 'KAIRA', d = {"Ghosts still have clothes on, so, I guess any stuff", "you have on you when you die stays with you..."} })

add({ n = 'CECILIA', d = {"Hm, makes sense... So, do you remember anything about your", "life with these treasures?"} })

add({ n = 'KAIRA', d = {"Kind of... I've been trying to remember. What do you think?"} })

local choice1
local choice2
local finish

add({ 
	n = 'CECILIA',
	d = {"What do I think? Uh..."},
	c = {
		{t = "Might be connected to your hobbies...", f = function() choice1() end },
		{t = "Might be connected to your friends...", f = function() choice2() end }
	}
})

choice1 = function()
	add({ n = 'KAIRA', d = {"My... hobbies?"} })
	add({ d = {"..."} })
	add({ d = {"......"} })
	add({ d = {".............."} })
	add({ n = '', d = {"She's been staring at the stuff for a while..."} })
	add({ n = 'KAIRA', d = {"Nope. I don't think so... I've never been the type to sit", "around playin' with marbles, or playin' dress up, or thinkin' about", "music."} })
	add({ d = {"But... I think... me and friends do do stuff like this every now and... a...gain."} })
	finish()
end

choice2 = function()
	add({ n = 'KAIRA', d = {"My... friends?"} })
	add({ d = {"..."} })
	add({ d = {"......."} })
	add({ d = {"................"} })
	add({ n = '', d = {"She's been staring at the stuff for a while..."} })
	add({ n = 'KAIRA', d = {"...! Oh, maybe it is...!"} })
	finish()
end

finish = function()
	add({ n = 'CEICLIA', d = {"Do you remember something?"} })
	add({ n = 'KAIRA', d = {"Uh huh. I think this is somehow connected to my friends!"} })
	add({ d = {"Yea... it's coming back to me... These were someone gave to me,", "from each of my friends!"} })
	add({ d = {"You wanna hear about them?"} })
	add({ n = 'CECILIA', d = {"If it'll help you move on, then yea..."}, node = 'nodes/week1/day3/treasure.lua' })
end







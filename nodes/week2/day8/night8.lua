--More progress. It was possible to get 2 ranks today!

add({ 
	n = '', 
	d = {"Back at your room..."},
	bg = bg.cecilia_room_night
})

add({ n = 'CECILIA', d = {"(Mmm... Done with homework for tonight. What should I do for the rest of the night?)"} })

add({
	d = {"(I could annoy Erika a bit... or even talk to Kaira since she's been pretty quiet", "tonight."},
	c = {
		{t = "Talk to Erika.", node = 'nodes/week2/day8/erika.lua'},
		{t = "Talk to Kaira.", node = 'nodes/week2/day8/kaira.lua'},
		{t = "Go to sleep early.", node = 'nodes/week2/day8/early_sleep.lua'}
	}
})


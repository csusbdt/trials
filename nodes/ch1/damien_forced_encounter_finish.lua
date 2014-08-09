

add({ n = '', bg = lecture_hall, d = "The Next Day in Physics..." })

add({ n = 'CECILIA', sm = sm.mc, d = {"(I made it to class in time! ...But maybe a", "little too early?"} })

add({ lg = lg.damien_eyes_closed, d = {"(Not too many people here... one of those people", "is that guy, Damien...)"} })

add({ d = {"(Surprisingly, he sat in the same seat, which was right next", "to the one I sat in...)"} })

add({ n = '', d = {"Damien was fooling around with his phone... and you", "decided to sit next to him."} })

add({ d = {"He noticed you and immediately groaned in annoyance..."} })

add({ 
	n = 'CECILIA',
	d = {"He doesn't seem too pleased with me... What should I do?"},
	c = {
		{ t = "Apologize D:", f = function() choice1() end },
		{ t = "Ignore him >.>", f = function() choice2()  end },
		{ t = "Talk to him :3", f = function() choice3() end
	}
})

choice1 = function()
	add({ d = { "Hey, look... About last time, I'm sorry."} })
	add({ n = 'DAMIEN', lg = lg.damien_irritated, d = {"..."} })
	add({ n = 'CECILIA', d = {" On Monday, something happened and I was stressed", "from running late. I didn't mean to get into an argument", "with you."} })
	add({ n = 'DAMIEN', lg = lg.damien_eyes_closed, d = {"........."} })
	add({ n = 'CECILIA', d = {"..."} })
	add({ d = {"(It doesn't seem like he's willing to move on from this...)"} })
	add({ d = {"(This is seriously going to be on rocky partnership...)"} })
	gs.damien = gs.damien +5
	finish()
end

choice2 = function()
	add({ d = { "(It's probably best to not say anything... I'll probably", " get into another argument with him...)" } })
	add({ d = {"..."} })
	add({ lg = lg.damien_irritated, n = 'DAMIEN', d = {"..."} })
	add({ n = '', d = {"You both sat there in awkward silence as you waiting for", "class to start."} })
	gs.damien = gs.damien + 2
	finish()
end

choice3 = function()
	add({ d = {"O-oh, hello Damien!"} })
	add({ n = 'DAMIEN', lg = lg.damien_irritated, d = {"..."} })
	add({ n = 'CECILIA', d = {"So, uh...We have lab today, right?"} })
	add({ n = 'DAMIEN', lg = lg.damien_eyes_closed, d = {"......."} })
	add({ n = 'CECILIA', sm = sm.mc_shock, d = {"Uh... Hello?"} })
	add({ n = 'DAMIEN', d = {"...Don't you know when you're being ignored?"} })
	add({ lg = lg.damien_irritated, d = {"Stop trying to talk to me."} })
	add({ n = 'CECILIA', d = {"Ugh..."} })
	add({ d = {"(Geez! I was just trying to ease the tension! He didn't", "have to be so mean about everything..."} })
	gs.damien = gs.damien - 10

finish = function()
	add({ n = '', d = { "In lab, the two of you didn't speak much to each other.", "Luckily, the first day of lab was something one person could do", "on their own." } })
	add({ d = {"The day continued on, nothing interesting happening..."}, node = 'nodes/ch1/night1.lua' })
end






add({ node = 'nodes/ch1/side_quests.lua' })


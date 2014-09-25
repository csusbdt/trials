--Meet Ruby

add({ n = 'CECILIA', d = {"(Well, it is lunchtime. I should probably get some food before my next class.)"} })

add({ n = '', d = {"..."}, bg = '' })

add({ d = {"At the Cafe..."}, bg = bg.cafe })

add({ n = 'CECILIA', d = {"(Hm... What should I get today?)"} })

add({ n = '', d = {"As you look through the menus of the various food centers, you see Ruby from", "the corner of your eye eating alone at a table."} })

add({ 
	n = 'CECILIA',
	lg = lg.ruby_worry,
	d = {"(Oh, I see Ruby... Maybe I should go talk to her?)"},
	c = {
		{t = "Go talk to her.", f = function() gs.ruby = gs.ruby + 5 end, node = 'nodes/week2/day9/ruby_talk.lua' })
		{t = "Invite her to eat with you.", node = 'nodes/week2/day9/ruby_eat.lua' })
		{t = "Leave her be.", node = 'nodes/week2/day9/leave_ruby.lua' })
	}
})
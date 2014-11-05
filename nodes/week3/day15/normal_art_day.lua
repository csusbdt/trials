--Since no matter what you do, you will not have enough disposition to rank up, 
--here's a small scene to grant you the disposition you need to rank up.

add({ n = 'CECILIA', d = {"Hey Ruby! What do you think of this piece?"} })

add({ n = 'RUBY', d = {"Oh, that? I think I've seen that somewhere... But it's pretty famous. What makes you", "ask about it?"} })

add({ n = 'CECILIA', d = {"I-it's famous? I thought it was a bit amateur-ish..."} })

add({ n = 'RUBY', d = {"I can understand where you get that impression, but here's why it's famous..."} })

add({ n = '', d = {"You and Ruby spent a very educational time talking to each other."} })

add({ d = {"..."} })


add({ 
	d = {"It's about time for class... You decided to leave Ruby for today."},
	f = function()
		gs.ruby = gs.ruby + 5
	end,
	node = 'nodes/week2/day12/night12.lua'
 })
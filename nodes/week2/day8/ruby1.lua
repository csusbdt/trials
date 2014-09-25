--If you've already ranked up, but... She doesn't like you that much, you have to grind some disposition.

add({ n = 'CECILIA', d = {"(Oh, good, she is here.)"} })

add({ lg = lg.ruby_worry, d = {"Hey, Ruby! ...No one here again?"} })

add({ n = 'RUBY', d = {"Yea, I don't think people will ever come..."} })

add({ n = 'CECILIA', d = {"Well, I'll come around."} })

add({ d = {"(Even if Lily doesn't want me to..."} })

add({ n = 'RUBY', d = {"Y-you will?"} })

add({ n = 'CECILIA', d = {"Yeah!"} })

add({ n = 'RUBY', d = {"O-oh... Thank you... So, what shall we do today?"} })

add({
	n = 'CECILIA', 
	d = {"Hm... Well..."},
	c = {
		{t = "Talk about Weekend.", f = function() gs.ruby = gs.ruby + 5 end, node = 'nodes/week2/day8/weekend_talk_ruby.lua'},
		{t = "Paint.", f = function() gs.ruby = gs.ruby + 10 end, node = 'nodes/week2/day8/paint.lua'}
	}
})
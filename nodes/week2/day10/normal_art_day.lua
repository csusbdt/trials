--Since no matter what you do, you will not have enough disposition to rank up, 
--here's some dialogue to grant you the disposition you need to rank up.

add({ n = '', d = {"Ruby was there painting on a small easle. Like normal, no one was there."} })

add({ n = 'RUBY', lg = lg.ruby_worry, d = {"Oh, hello Cecilia. What shall we do today?"} })

add({ 
	n = 'CECILIA', 
	d = {"Today, let's..."},
	c = {
		{t = "Talk a bit.", f = function() gs.ruby = gs.ruby + 5 end, node = 'nodes/week2/day10/ruby_talk.lua'},
		{t = "Paint a bit.", f = function() gs.ruby = gs.ruby + 10 end, node = 'nodes/week2/day10/ruby_paint.lua'}
	}
})
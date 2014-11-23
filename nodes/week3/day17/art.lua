--Choices today, no ranking up.

add({ n = 'CECILIA', d = {"I'll go visit Ruby today."} })

add({ n = '', bg = '', d = {"..."} })

add({ bg = bg.paint_studio, d = {"In the Art studio..."} })

add({ n = 'CECILIA', d = {"(She's not here...? Huh, weird.)"} })

add({ d = {"(I'll just wait and draw a little...)"} })

add({ n = '', bg = '', d = {"......"} })

add({ bg = bg.paint_studio, d = {"After some time of painting, the door swings open and Ruby walks in."} })

add({ n = 'RUBY', lg = lg.ruby, d = {"Hm? Oh, it's you! I'm sorry I wasn't here... I wanted to stop off and get some food."} })

add({ n = 'CECILIA', d = {"No, it's alright. I was able to draw something cute. Take a look!"} })

add({ n = 'RUBY', d = {"Oh~! It's so cute!"} })

add({ d = {"So, what do you want to do today?"} })

add({ 
	n = 'CECILIA', 
	d = {"Hm..."},
	c = {
		{t = "Let's take a snack break.",f = function() gs.ruby = gs.ruby + 10 end, node = 'nodes/week3/day17/ruby_eat.lua'},
		{t = "Let's draw.", f = function() gs.ruby = gs.ruby + 5 end, node = 'nodes/week3/day17/ruby_draw.lua'}
	}
})
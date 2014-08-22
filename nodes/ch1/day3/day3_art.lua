--Art Room, Possible Start for Ruby's Sidequest.

add({ d = {"Hm, well, I guess I should look around a bit. I heard the Art", "Department is top notch here, so I'll go there first!"} })

add({ n = '', bg = bg.paint_studio, d = {"The Art Department. A place where those looking to express theirselves", "through various artist mediums. At the moment, it seemed a bit dead..."} })

add({ d = {"Upon entering the Art Department's building, you immediately enter the first", "classroom you saw..."} })

add({ d = {"Luckily, there wasn't a class in session, but there was a student", "currently using some of the art tools..."} })

add({ d = {"She looked... familiar..."} })

add({ n = 'CECILIA', lg = lg.ruby_worry, d = {"(Hey, wait... isn't that, that one girl who I ran into on Monday?)"} })

add({ n = '', d = {"The girl noticed you come in and immediately looked away, turning her", "back towards you."} })

add({ n = 'CECILIA', d = {"(Yea, I don't blame her, I kind of ruined her vase...)"} })

add({ 
	d = { "(Still, I feel bad, I should at least try to apologize, or something...)" },
	c = {
		{ t = "Talk about Art :D", f = function() gs.ruby = gs.ruby + 20 end, node = 'nodes/ch1/day3/ruby_quest.lua' },
		{ t = "Apologize D:", f = function() gs.ruby = gs.ruby + 25 end, node = 'nodes/ch1/day3/day3_ruby_apologize.lua' }
	}
})

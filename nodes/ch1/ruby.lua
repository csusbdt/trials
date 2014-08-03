--[[
         +--> ruby_appologize --+
ruby --> |                      | --> ruby_finish
         +--> ruby_leave -------+
--]]

add({ n = 'CECILIA', bg = bg.sidewalk_with_campus, sm = sm.mc_shock, m = mu.other, f = next_time, d = { "OUT THE WAY!!!" } })

add({ n = '', sm = sm.mc, d = { "I ran down the street towards the campus. I ran as fast as my legs could move as", "I kept nervously looking down at my watch."} })

add({ d = { "It's the first day of college, and I just happen to go into a", "comatose-like sleep that even Erika couldn't wake me up from!" } })

add({ d = { "Just. My. Luck."} })

add({ d = { "As I made a sharp turn around the corner, I felt a pressure push", "up against me, forcing me to stop and stammer back a bit." } })

add({ n = 'CECILIA', sm = sm.mc_shock, d = { "Owww!!!" } })

add({ n = '', lg = lg.ruby_worry, d = { "As I came to a stop, I looked up to see a short, dark skinned", "girl who seemed a bit flustered." } })

add({ n = 'GIRL', d = { "Ow... Owww! I-I'm sorry! I-I-I didn't mean to... I..." } })

add({ n = '', sm = sm.mc, d = { "The girl looked down as her voice trailed off... My gaze followed her's and I saw", "dozens of shards scattered around our feet." } })

add({ n = 'GIRL', d = { "...My Vase..." } })

add({ n = '', d = {"The girl gripped the edge of her skirt tightly. I think she was... shaking..."} })

add({ n = 'CECILIA', d = { "...Oh... I-I..." } })

add({ n = '', lg ='', d = { "The girl slowly got on her knees and started to pick up the pieces. Her head was", "hung low, but I could tell she was crying." } })

add({ n = 'CECILIA', d = {"(Oh geez, out of all the times for this to happen... Why now...?"} })

add({ 
	n = 'CECILIA', sm = sm.mc_shock,
	d = { "(I feel bad for the girl, but I'm already burning daylight standing", "here! Class is going to start at any moment, and if I'm", "late, I'll get kicked out of the class!)" },
	c = {
		{ t = "Apologize and be late. @.@", f = function() gs.ruby = gs.ruby - 40 end, node = 'nodes/ch1/ruby_appologize.lua' },
		{ t = "Leave the girl. >.>", f = function() gs.lily = gs.lily - 60 end, node = 'nodes/ch1/ruby_leave.lua' }
	}
})


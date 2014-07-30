

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

local ruby_appologize
local ruby_leave
local ruby_finish

add({ 
	n = 'CECILIA', sm = sm.mc_shock,
	d = { "(I feel bad for the girl, but I'm already burning daylight standing", "here! Class is going to start at any moment, and if I'm", "late, I'll get kicked out of the class!)" },
	c = {
		{ t = "Apologize and be late. @.@", f = function() ruby_appologize() end },
		{ t = "Leave the girl. >.>", f = function() ruby_leave() end }
	}
})

ruby_appologize = function()
	gs.ruby = gs.ruby - 40 
	gs.lily = gs.lily - 60
	add({ n = 'CECILIA', d = { "I'm sorry.", "I'm just in a big hurry to get to class on time...", "I didn't mean to run into you!" } })
	add({ n = '', lg = lg.ruby_cry, d = { "The girl looked up to me, tears streaming down her face. " } })
	add({ n = 'GIRL', d = { "...I...I-I know... It's my fault... I-I should've", "been watching where I was going..."} })
	add({ n = 'CECILIA', d = {"No... It's both our fault. Here, let me help you."} })
	add({ n = '', sm = sm.ruby_worry, d = {"You knelt down and start to pick up the shards.", "The girl looked watched you for a few moments before wiping", "her eyes off and going back to picking up shards."} })
	add({ bg = '', lg = '', d = {" ..."} })
	add({ d = {" ........"} })
	add({ d = {".........................."} }) 
	add({ bg = bg.sidewalk_with_campus, lg = lg.ruby_worry, d = {"You finished picking up the shards, but with the time it took,", "You are defintely late."} })
	add({ n = 'GIRL', d = {"...Th-thank..."} })
	add({ n = '', d = {"Before she could finish her sentence, another girl from far", "away yelled out to the girl."} })
	add({ d = {"As the other girl approached her, you decided to run ahead to attend class,", "hoping the teacher will go easy on you since it's a freshman class."} })
	ruby_finish()
end

ruby_leave = function()
	gs.ruby = gs.ruby - 60 
	gs.lily = gs.lily - 80
	add({ n = 'CECILA', d = { "I'm sorry, I really am, but I need to get going!" } })
	add({ n = 'GIRL', d = {"..."} })
	add({ n = 'CECILIA', d = {"(I feel like a scumbag, leaving her there, but my own", "needs comes before her's!"} })
	add({ n = '', d = {"You left the girl and resumed running down the street towards your class.", "All you can hear was her sniffling as you ran away."} })
	ruby_finish()
end

ruby_finish = function()
	add({ n = '', bg = '', d = { "You got to class, and it turns out the teacher was late, so she", "didn't know who was late and who wasn't! Lucky!" },  node = 'nodes/ch1/damien.lua' })
end


--To that Art Studio!

if gs.ruby_scene == 0 then

	add({ n = 'CECILIA', d = {"(Hm, well, since Marble girl does seem a lot like that Ruby girl,", "maybe I should check to see if she's there."} })

	add({ n = '', bg = bg.paint_studio, d = {"At the art studio, into the first room you could see, there was an empty studio."} })

	add({ n = 'CECILIA', d = {"(Ugh, the intense smell of paint and clay...)"} })

	add({ n = '', d = {"After looking around, the small girl you bumped into on Monday came through the", "door, panting."} })

	add({ n = 'RUBY', lg = lg.ruby_worry, d = {"Huh... Huh... S-sorry for being lat--!"} })

	add({ n = '', d = {"After she looked around, she realized it was just you and her in", "the room."} })

	add({ n = 'RUBY', d = {"..."} })

	add({ n = '', d = {"She looks disheartened..."} })

	add({ n = 'CECILIA', d = {"U-uh...?"} })

	add({ n = 'RUBY', d = {"H-huh? Yes?"} })

	add({ n = 'CECILIA', d = {"Is everything alright?"} })

	add({ n = 'RUBY', d = {"Yea... I mean... N-no, nevermind."} })

	add({ n = 'CECILIA', d = {"Huh? Tell me!"} })

	add({ n = 'RUBY', d = {"W-well... There was supposed to be a club meeting, but... As you can see", "no one came but me..."} })

	add({ n = 'CECILIA', d = {"Ah... Well, we can do something together!"} })

	add({ n = 'RUBY', d = {"Huh?"} })

	add({ n = 'CECILIA', d = {"Yea! We can just draw something, for fun!"} })

	add({ n = 'RUBY', d = {"...That sounds... really nice. Yea... Let's draw something!"} })

	add({ n = '', d = {"..."} })

	add({ d = {"After drawing a bit..."} })

	add({ n = 'CECILIA', d = {"(Oh, crap! I forgot to mention the marbles! I got so caught up in", "trying to cheer her up...)"} })

	add({ d = {"Uh... Ruby? Have you ever... you know... played with marbles when you", "were younger?"} })

	add({ n = 'RUBY', d = {"Marbles...? Uh..."} })

	add({ d = {"To be honest, I-I don't really remember... There's a lot about my past that I don't", "remember."} })

	add({ n = 'CECILIA', d = {"Hm? What do you mean--?"} })

	add({ n = '???', d = {"Hey. Ruby!"} })

	add({ n = '', d = {"Another girl came through the door. She wore punk-type clothing and heavy makeup."} })

	add({ n = 'RUBY', d = {"Oh, Lily! I thought you had a club meeting."} })

	add({ n = 'LILY', d = {"Not today. It's only Mondays and Wednesdays... Decided to see what you're up to.", "This a member of the art club?"} })

	add({ n = 'RUBY', d = {"Um... not quite, but uh, hey... Did we ever play with marbles when we were little?"} })

	add({ n = 'LILY', d = {"..."} })

	add({ n = '', d = {"She looked like she was deep in thought for a bit..."} })

	add({ n = 'LILY', d = {"...No, we didn't."} })

	add({ n = 'RUBY', d = {"Oh? Hmm... Well, maybe I didn't? Sorry..."} })

	add({ n = 'CECILIA', d = {"No, it's alright..."} })

	add({ n = 'LILY', d = {"Why did you want to know anyways?"} })

	add({ n = 'CECILIA', d = {"O-oh... Uh... A-a friend of mine wanted to get a cheap toy for her baby", "brother... So, I was wondering if people even played with stuff like marbles."} })

	add({ n = 'LILY', d = {"No, I... don't think they do. There's nothing to do with marbles, really."} })

	add({ n = 'RUBY', d = {"Oh really? I dunno, think about it, it does sound fun! But..."} })

	add({ d = {"For some reason, I feel nostalgic... Those small, shiny balls... Especially one with a", "deep red..."} })

	add({ n = 'LILY', d = {"Nostalgic? We've never played with them... Okay?"} })

	add({ d = {"Don't think too much on it."} })

	add({ n = 'CECILIA', d = {"A-alright... Ah, crap. I gotta go to class! See ya Ruby!"} })

	add({ n = 'RUBY', d = {"U-uh... okay. Bye, Cecilia, right?"} })

	add({ 
		n = 'CECILIA', 
		d = {"Mhm, bye!"}, 
		node = 'node/week1/day5/after_art.lua', 
		f = function() 
			gs.ruby = gs.ruby + 15
			gs.ruby_scene = 1
		end
	})

elseif gs.ruby_scene == 1 then
	add({ 
		n = 'CECILIA', 
		d = {"Mhm, bye!"}, 
		node = 'node/week1/day5/after_art.lua',  
	})
end
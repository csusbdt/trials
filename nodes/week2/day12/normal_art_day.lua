--Since no matter what you do, you will not have enough disposition to rank up, 
--here's some dialogue to grant you the disposition you need to rank up.

add({ n = 'CECILIA', d = {"Ruby, hey!"} })

add({ n = 'RUBY', d = {"Oh hello. What's... up?! Heheheheh~"} })

add({ n = 'CECILIA', d = {"Ah...ahahahah! That's so weird!"} })

add({ n = 'RUBY', d = {"W-what?"} })

add({ n = 'CECILIA', d = {"You're normally so formal, so hearing you say something like, 'What's up?' is", "pretty... shocking!"} })

add({ n = 'RUBY', d = {"A-ah... Well, a girl in my class said that was a bit too stiff and prudish, so", "I wanted to practice being more... approachable?"} })

add({ d = {"...Was it really that awkward?"} })

add({ n = 'CECILIA', d = {"Just a bit. But... I like it when you're a bit stiff and formal. I think it's", "just who you are."} })

add({ n = 'RUBY', d = {"Mmm... Yeah, but... D-didn't you think I was a bit... unapproachable when you first met me?"} })

add({ n = 'CECILIA', d = {"No, but then again... We did meet in a bit of an awkward situation..."} })

add({ d = {"If we had met under normal circumstances, maybe things would've been different?"} })

add({ n = 'RUBY', d = {"Mm, right. That makes sense..."} })

add({ d = {"I actually remember not liking you at all when we first met."} })

add({ n = 'CECILIA', d = {"Eh, can't blame ya. I did break your art project..."} })

add({ n = 'RUBY', d = {"B-but I don't think that now! I've gotten over it."} })

add({ n = 'CECILIA', d = {"Oh! Speaking of the art project, did you ever start remaking it?"} })

add({ n = 'RUBY', d = {"Yes, actually. I though this time, I think I'm going to try to make a small tea set."} })

add({ d = {"Wanna see the designs?"} })

add({ n = 'CECILIA', d = {"Sure!"} })

add({ n = '', d = {"Ruby should her simple, yet cute tea set designs."} })

add({ 
	d = {"...After that, you spent some time talking to each other about various art", "related topics. However, it came to end when it was time for your next class."},
	f = function()
		gs.ruby = gs.ruby + 5
	end,
	node = 'nodes/week2/day12/night12.lua'
 })
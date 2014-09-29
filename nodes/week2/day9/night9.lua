--Small scene with Erika about today in Writing class. After that, you can go out. 
--Right choice is to go to the Cafe.

add({ n = '', lg = '', bg = bg.kitchen, d = {"Back in your dorm suite..."} })

add({ d = {"Erika was making food. You stayed in the kitchen and watched her cook as you told", "her your day."} })

add({ n = 'ERIKA', d = {"So, you challenged him to a bet over food? Why am I not surprised."} })

add({ n = 'CECILIA', d = {"What can I say? I was hungry at the time."} })

add({ n = 'ERIKA', d = {"And you have to cook him food if you don't? Man, is that guy suicidal?"} })

add({ n = 'CECILIA', d = {"H-hey! I can cook! You liked the pasta I made the other day..."} })

add({ n = 'ERIKA', d = {"All you did was mix together dry pasta, water, and sauce mix. I wouldn't call that", "cooking..."} })

add({ n = 'CECILIA', d = {"Well, it doesn't matter, because I have you! If I do lose, you can just teach me", "how to cook something really basic!"} })

add({ n = 'ERIKA', d = {"Oh, that's fair. At least then, he won't pass out from your mystery food X."} })

add({ n = 'CECILIA', d = {"My cooking isn't that bad!"} })

add({ n = 'ERIKA', d = {"I can't believe that considering you've never cooked a meal from scratch before..."} })

add({ d = {"If you want, we can practice tonight."} })

add({ n = 'CECILIA', d = {"Maybe tomorrow or during the weekend when we're not busy."} })

if gs.damien_scene == 1 then
	add({ d = {"Oh, speaking of the weekend. I talked to Damien today. He told me about some", "coffee shop that sells alcohol at night."} })
	add({ d = {"Wanna go?"} })
	add({ n = 'ERIKA', d = {"A coffee shop that turns into a bar at night? I guess we can check it out..."} })
	add({ n = 'CECILIA', d = {"Great! I actually need to talk to him about Kaira... I didn't really have a chance", "to ask him when we were talking yesterday..."} })
	add({ n = 'ERIKA', d = {"Mhm..."} })
	add({ n = 'CECILIA', d = {"What's with that tone?"} })
	add({ n = 'ERIKA', d = {"Hm? Nothing?"} })
	add({ n = 'CECILIA', d = {"..."} })

end

add({ n = 'ERIKA', d = {"So, what are you going to do tonight?"} })

add({ n = 'CECILIA', d = {"I don't know... I kind of want to go out..."} })

add({ n = 'ERIKA', d = {"Go out where? Out on campus?"} })

add({ n = 'CECILIA', d = {"Yea, probably..."} })

add({ n = 'ERIKA', d = {"Hahaha, okay... Just make sure you're careful walking around at night."} })

add({ n = 'CECILIA', d = {"Will do, Mother."} })

add({ 

	bg = bg.cecilia_room_night, 
	d = {"(Now, what should I do? I could go out, but I could stay in too..."}, 
	c = {
		{t = "Go out.", f = function() gs.will = gs.will + 5 end, node = 'nodes/week2/day9/go_out.lua'},
		{t = "Stay in.", node = 'nodes/week2/day9/stay_in.lua'}
})
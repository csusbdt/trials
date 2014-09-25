--the morning encounter with Will.

add({ 
	n = '',
	bg = bg.lecture_hall,
	lg = '',
	d = {"In Expository Writing, Frist Year's course..."} })
})

add({ d = {"Today, you're getting your first homework assignment back."} })

add({ n = 'CECILIA', d = {"Woah... a 72, that's insanely low. And it's the first assignment too."} })

add({ n = 'PROFESSOR', d = {"Umm... Miss Noble?"} })

add({ n = '', d = {"The professor has approached you while the TA was handing out the rest of the", "assignments."} })

add({ n = 'PROFESSOR', d = {"Miss Noble, your grade for this was quite low... Normally, this short essay is", "one of the easier assignments..."} })

add({ n = 'CECILIA', d = {"(Thanks for rubbing the salt into the wound...)"} })

add({ n = 'PROFESSOR', d = {"I will be a bit busy today, but you can go over it with William today or wait", "until tomorrow to go over it with me."} })

add({ n = 'CECILIA', d = {"I'll... probably talk to William about it."} })

add({ n = 'PROFESSOR', d = {"Good! Now, back to the lecture."} })

add({ n = '', d = {"..."} })

add({ d = {"........."} })

add({ d = {"After class..."} })

add({ n = 'WILLIAM', lg = lg.will, d = {"We can stay in here to go over it, since this is empty until 4."} })

add({ n = 'CECILIA', d = {"Okay. So, what did I do wrong?"} })

add({ n = 'WILLIAM', d = {"Not so much 'what went wrong', but 'where did you go wrong'..."} })

add({ d = {"Look, here. In the second paragraph, you started writing about your family", "and you kept writing about them for most of the essay."} })

add({ d = {"This essay is supposed to be about you, not your family..."} })

add({ n = 'CECILIA', d = {"Wait, b-but... She said we could..."} })

add({ n = 'WILLIAM', d = {"Well, you can mention them, but it shouldn't be the focus of your essay."} })

add({ n = 'CECILIA', d = {"...She should've clarified..."} })

add({ n = 'WILLIAM', d = {"Well, judging by the start of the essay, you were talking about yourself. So,", "you understood the assignment to a certain degree..."} })

add({ n = 'CECILIA', d = {"(Geez, these people really know how to make me feel like an idiot...)"} })

add({ n = 'WILLIAM', d = {"You really just need to an outline or, at the very least, a rough paragraph."} })

add({ n = 'CECILIA', d = {"I haven't used one of those since middle school..."} })

add({ n = 'WILLIAM', d = {"Well, college papers are important, so doing those can help a lot."} })

add({ n = 'CECILIA', d = {"Hmm... Alright! I'll try my best next time!"} })

add({ n = 'WILLIAM', d = {"Hmhmhmhm... I wonder about that..."} })

add({ n = 'CECILIA', d = {"Wh-what is that supposed to mean?!"} })

add({ n = 'WILLIAM', d = {"Hm? What was that?"} })

add({ n = 'CECILIA', d = {"...'I wonder about that'. Are you saying that I won't do better?"} })

add({ n = 'WILLIAM', d = {"Hmhm, maybe."} })

add({ n = 'CECILIA', d = {"Oh...? You really think that? Well then, let's make a bet. If I get higher than an", "85 on the next essay, you treat me to lunch!"} })

add({ n = 'WILLIAM', d = {"Ahaha, alright. Fine. But if I win?"} })

add({ n = 'CECILIA', d = {"What do you want?"} })

add({ n = 'WILLIAM', d = {"Hm... There's a lot of things I want..."} })

add({ n = 'CECILIA', d = {"Ew, don't say it like that! You sound like a dirty old man."} })

add({ n = 'WILLIAM', d = {"Ahahahahahaha! Hmhmhm... Alright, alirght. How about... You make me a lunch. Homemade."} })

add({ n = 'CECILIA', d = {"You want me to... cook for you?"} })

add({ n = 'WILLIAM', d = {"Yes. I haven't had homemade food for a while, so it'll be nice."} })

add({ n = 'CECILIA', d = {"Fine. That's a fair deal."} })

add({ n = 'WILLIAM', d = {"Deal. Oh, and you better start reading up on cookbooks..."} })

add({ n = '', d = {"With a small chuckle, he rises from his seat and leaves."} })

add({ 
	n = 'CECILIA', 
	d = {"(Homemade lunch, huh...?)"}, 
	node = 'nodes/week2/day9/afternoon.lua',
	f = function() 
		gs.will = gs.will + 10
	end
})
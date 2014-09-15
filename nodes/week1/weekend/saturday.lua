--Uneventful day

add({ 
	bg = bg.cecilia_room_day, 
	n = '', 
	d = {"Saturday, afternoon... You slept in."}, 
	f = next_afternoon 
})

add({ d = {"You spent most of the day relaxing and doing your favorite hobby..."} })

add({ d = {"..."} })

add({ d = {"......"} })

add({ d = {"................"}, f = next_time })

add({ bg = bg.cecilia_room_night, d = {"Before you realized it, it was nighttime."}, })

add({ n = 'KAIRA', lg = lg.ghost, d = {"Hey, since it's nighttime, wanna go over the last treasure of mine?"} })

add({ n = 'CECILIA', d = {"Sure. It was the piece of paper, right?"} })

add({ n = 'KAIRA', d = {"It's not just a piece of paper! It was a tear out from a magazine for a sweepstakes!"} })

add({ n = 'CECILIA', d = {"A sweepstakes? For what?"} })

add({ n = 'KAIRA', d = {"Uh huh, for a band camp!"} })

add({ n = 'CECILIA', d = {"Pfft, a band camp? Hahaha, that's so nerdy!"} })

add({ n = 'KAIRA', d = {"Wh-what? What's so nerdy about learning how to play the guitar or the drums?"} })

add({ n = 'CECILIA', d = {"Wait, what? Guitar? What kind of band camp is that?"} })

add({ n = 'KAIRA', d = {"Um... I think a rockstar made a camp to teach young kids how to be a rockstar."} })

add({ n = 'CECILIA', d = {"A rockstar teaching others how to be a rockstar...? That sounds like a movie..."} })

add({ n = 'KAIRA', d = {"But it was true! One of the boys wanted to do it, but he would've been gone all summer..."} })

add({ d = {"So, the group asked him not to go, and he didn't... But, I don't think we were", "his only reason for not going..."} })

add({ d = {"He seemed really down, so we all decided to create our own rock band that summer!", "It was really fun!"} })

add({ n = 'CECILIA', d = {"I'm... just gonna say this now. Your little 'adventures' are really", "weird..."} })

add({ n = 'KAIRA', d = {"H-hey! I'm only a kid, y'know!"} })

add({ n = 'CECILIA', d = {"Still, that's weird..."}, node = 'nodes/week1/weekend/saturday_night.lua' })
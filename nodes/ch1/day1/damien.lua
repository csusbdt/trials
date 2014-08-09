-- Scene with Damien

add({ sm = '', d = {"Time Marches on..."} })

add({ 
	n = 'CECILIA',
	f = next_afternoon,
	bg = bg.lecture_hall,
	sm = sm.mc_sweat, 
	m = mu.friendly, 
	d = { "(Woo... This Class... It's going to beat the crap out of me...)" }
})

add({ n = 'PROFESSOR', sm = sm.mc, d = {"Alright everyone. Since we finished early, I'll end class", "for today. For lab, make sure you attend every session and work", "diligently with your partner."} })

add({ n = 'CECILIA', d = {"(A partner? I didn't know we were pairing up...)"} })

add({ d = {"(Now that I'm looking around the room, it seems everyone has a", "partner already. Or at least, has someone they want to pair up with...)"} })

add({ n = '', d = { "While I looked around the room, I heard a cough and saw the boy", "next to me staring at me..." } })

add({ d = {"He had pale white skin, and pierced lips and ears... His clothes", "and body language made him seem out of place here."} })

add({ n = 'CECILIA', lg = lg.damien, d = {"...Wanna be partners?"} })

add({ n = '', d = {"I didn't really want to be partners with him, since he looked like he", "wouldn't take lab seriously, but I needed a partner."} })

add({ n = 'PUNK BOY', d = {"...Yea, sure."} })

add({ n = 'CECILIA', d = {"Alright, sweet! That's one less problem to worry about", "My name's Cecilia, by the way. What's your's?"} })

add({ n = 'DAMIEN', d = {"It's Damien. Well, I guess I'll leave you to do most of the", "work. "} })

add({ n = 'CECILIA', sm = sm.mc_shock, d = {"H-huh?! What are you saying, we're partners!"} })

add({ n = 'DAMIEN', lg = lg.damien_eyes_closed,  d = {"Yea, but... I don't really have the time to be doing stuff", "like coming to class every day or paying attention in the labs."} })

add({ d = {"All you would need to do is let me copy your notes and do most", "of the lab work, okay?"} })

add({ n = 'CECILIA', d = {"(W-what? He just expects to do all of the work here?!)"} })

add({ sm = sm.mc_upset, d = {"Yea, that's not going to work, 'buddy'. We're partners, and", "you need to do some of the work to, you know! There's no free rides with me!"} })

add({ n = 'DAMIEN', lg = lg.damien_irritated, d = {"Hmph, like anyone would want a ride from you. All you're doing", "is helping out your partner, it's not that big of a deal."} })

add({ n = 'CECILIA', d = {"It is a big deal. You want me to do all of the work!"} })

add({ n = 'DAMIEN', d = {"...If you were listening, I didn't say 'all', just 'most'."} })

add({ n = 'CECILIA', d = {"I can't believe you! If you're not going to do work, why even", "bother with going to college! You should've done something else!"} })

add({ d = {"(I'm at my limit, there's no way I'm pairing up with this guy!)"} })

add({ n = 'DAMIEN', d = {"You do know college is required for a lot of jobs, right? Jeez,", "if I would've known you were going to be this much of a pain, I would've", "looked for another partner..."} })

add({ n = 'CECILIA', d = { "(Same to you, 'buddy'.)" } })

local choice1
local choice2
local finish

add({  
	d = { "(This guy seems really annoying... But I'm kind of stuck with him for the next three", "months... What should I do to smooth things over?)" },
	c = {
		{ t = "Try to cut your losses >:/", f = function() choice1() end },
		{ t = "Just ignore him >.>", f = function() choice2()  end }
	}
})

choice1 = function()
	add({ sm = sm.mc, d = { "Okay, fine. Be that way. But do not come complaining to me if you get", "a bad score on something!" } })
	add({ n = 'DAMIEN', d = {"I'll be copying your notes, so if I get a bad score, so would you."} })
	add({ n = 'CECILIA', d = {"No, but my notes are pretty weird... You probably won't understand them."} })
	add({ n = 'DAMIEN', d = {"Hm, well then, let me see your notes from today."} })
	add({ n = '', d = {"Damien looked through the notes...", "His expression seemed bothered as Cecilia gave him a delivish smirk."} })
	add({ n = 'DAMIEN', lg = lg.damien_eyes_closed, d = {"..."} })
	add({ n = 'CECILIA', d = {"See? Told you you wouldn't understand it~!"} })
	add({ n = 'DAMIEN', d = {"And? All that means is that you have to learn to write legible", "notes for class. At any rate, I'm done talking with you."} })
	add({ n = '', lg = '', d = {"Damien stood up and left out of the lecture hall without saying another word."} })
	add({ n = 'CECILIA', d = {"Asshole... Like I'd ever do that for him!"} })
	gs.damien = gs.damien - 70
	finish()
end

choice2 = function()
	add({ d = { "(I'm not going to even bother trying to talk to this guy. I'll just end", "up getting more stressed out from this class...)" } })
	add({ d = {"(I'll just do my own thing, and if he doesn't come to class, I'll just ask the", "lab instructor if I can join another group or something...)"} })
	add({ d = {"..."} })
	add({ lg = lg.damien_irritated, n = 'DAMIEN', d = {"...Got nothing to say, eh?"} })
	add({ n = 'CECILIA', d = {"..."} })
	add({ n = 'DAMIEN', d = {"Heh... Fine. You're a lot better when you don't talk as much anyways..."} })
	add({ n = '', lg = '', d = {"With that said, Damien left... After a few minutes of packing your stuff, you", "decided to leave too..."} })
	gs.damien = gs.damien - 50
	finish()
end

finish = function()
	add({ sm = '', d = { "Because of everything that happened today, you decided to eat alone at home", "alone before continuing your first day of classes..." } })
	add({ d = {"The day continued on, nothing interesting happening..."}, node = 'nodes/ch1/day1/night1.lua' })
end



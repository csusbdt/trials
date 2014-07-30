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

add({ n = '', d = {"I didn't really want to be partners with him, since he looked like he", "wouldn't take this project seriously."} })

add({ n = 'PUNK BOY', d = {"...Yea, sure."} })

add({ n = 'CECILIA', d = {"Alright, sweet! That's one less problem to worry about", "My name's Cecilia, by the way. What's your's?"} })

add({ n = 'DAMIEN', d = {"It's Damien. Well, I guess I'll leave you to do most of the", "work. "} })

add({ n = 'CECILIA', d = {"H-huh?! What are you saying, we're partners!"} })

add({ n = 'DAMIEN', d = {"Yea, but... I don't really have the time to be doing stuff", "like coming to class every day or paying attention in the labs."} })

add({ d = {"All you would need to do is let me copy your notes and do most", "of the lab work okay?"} })

add({ n = 'CECILIA', d = {"(W-what? He just expects to do all of the work here?!)"} })

add({ d = {"Yea, that's not going to work, 'buddy'. We're partners, and", "you need to do some of the work to, you know! There's no free rides with me!"} })

add({ n = 'DAMIEN', d = {"Hmph, like anyone would want a ride from you. All you're doing", "is helping out your partner, it's not that big of a deal."} })

add({ n = 'CECILIA', d = {"It is a big deal. You want me to do all of the work!"} })

add({ n = 'DAMIEN', d = {"...If you were listening, I didn't say 'all', just 'most'."} })

add({ n = 'CECILIA', d = {"I can't believe you! If you're not going to do work, why even", "bother with going to college! You should've done something else!"} })

add({ d = {"(I'm at my limit, there's no way I'm pairing up with this guy!)"} })

--add({ n = 'DAMIEN

add({ n = 'DAMIEN', lg = lg.damien, sm = sm.mc, m = mu.friendly, d = { "Hi.", "I'm Damien." } })

add({ n = 'CECILIA', d = { "Nice to meet you." } })

add({ n = '', d = { "Lot's of dialog..." } })

local choice1
local choice2
local finish

add({ 
	n = '', 
	d = { "You decide about soemthing." },
	c = {
		{ t = "choice 1", f = function() choice1() end },
		{ t = "choice 2", f = function() choice2() end }
	}
})

choice1 = function()
	add({ n = 'CECILIA', d = { "I picked choice 1.", "..." } })
	finish()
end

choice2 = function()
	add({ n = 'CECILA', d = { "I picked choice 2." } })
	finish()
end

finish = function()
	add({ n = '', d = { "I'm going to return to my room." }, node = 'nodes/ch1/night1.lua' })
end



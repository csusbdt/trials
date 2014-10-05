--Talkin' to Kaira about... Damien!

add({ n = 'CECILIA', d = {"(I guess I'll talk to Kaira.)"} })

add({ n = 'KAIRA', bg = bg.cecilia_room_night, lg = lg.ghost, d = {"Oh, welcome back! Any progress?"} })

if gs.damien_scene == 2 then
	add({ n = 'CECILIA', d = {"Actually, yes. I'm pretty sure Damien, my lab partner, is in fact the kid who", "wanted to go to the rock summer camp."} })
	add({ n = 'KAIRA', d = {"Damien...? Hm... The name seems familiar... What makes you think so?"} })
	add({ n = 'CECILIA', d = {"Well, he apparently lived around here and he wanted to go to that summer band camp."} })
	add({ d = {"It's not for sure him, but so far, his story alines to your's a lot more", "than anyone else's."} })
	add({ n = 'KAIRA', d = {"Yea! Hopefully he is! Now I'm excited!"} })

end

if gs.will_scene == 1 then
	add({ n = 'CECILIA', d = {"Oh, I want to know more about the wannabe rockstar."} })
	add({ d = {"I know that Will has a high chance of being the wannabe actor, so I need", "some clues to find out more about the other guy."} })

elseif gs.will_scene == 1 and gs.damien == 2 then
	add({ n = 'CECILIA', d = {"Oh, I want to know more about the wannabe rockstar."} })
	add({ d = {"I know that William has a high chance of being the wannabe actor, and that", "Damien has a high chance of being the wannabe rockstar..."} })
	add({ d = {"However, I need to know some more about the him."} })

elseif gs.damien_scene == 2 then
	add({ n = 'CECILIA', d = {"Oh, I want to know more about the wannabe rockstar."} })
	add({ d = {"I know that Damien has a high chance of being the wannabe rockstar..."} })
	add({ d = {"However, I need to know some more about the him."} })

else
	add({ n = 'CECILIA', d = {"Oh, I want to know more about the wannabe rockstar, since I don't really", "have any clues to work on."} })

end

add({ n = 'KAIRA', d = {"Okay! Uh... Let me think for a bit..."} })

add({ n = '', d = {"Kaira grabbed the scrap of old paper and stared at it intently."} })

add({ d = {"..."} })

add({ n = 'KAIRA', d = {"He... loved to perform."} })

add({ d = {"...A-and it didn't matter what he did-- music, plays, crackin' jokes...", "He wanted all eyes on him."} })

if gs.damien_scene >= 1 then
	add({ n = 'CECILIA', d = {"(That sounds more like William than Damien... Did I make a mistake?)"} })
end

add({ n = 'KAIRA', d = {"Yea... But he didn't always show it. Yeah, I remember now!"} })

add({ d = {"He was reaaaally quiet at first, but after he met me, he just loved entertainin' others."} })

add({ d = {"Does that help?"} })

if gs.damien_scene >= 1 then
	add({ n = 'CECILIA', d = {"Actually, you did just the opposite. Now I'm even more confused!"} })
	add({ n = 'KAIRA', d = {"H-how come?"} })
	add({ n = 'CECILIA', d = {"Because the dude I previously thought was the rock band boy might actually be", "another boy I've met recently."} })
	add({ d = {"In fact, the dude I thought it was doesn't act like your rock band friend act all..."} })
	add({ n = 'KAIRA', d = {"Ohhh.... Maybe I'm mixing my friends up...?"} })
	add({ n = 'CECILIA', d = {"That's possible, but... I don't know, something doesn't sit right."} })
	add({ d = {"Jeez, just when I thought I was getting so close to finding one..."} })

elseif gs.will_scene == 1 and gs.damien_scene == 0 then
	add({ n = 'CECILIA', d = {"Actually, you did just the opposite. The guy that I thought was the wannabe", "actor might be the wannabe rockstar..."} })
	add({ n = 'KAIRA', d = {"Huh?"} })
	add({ n = 'CECILIA', d = {"The personality you described... About him loving being the center of attention", "...That sounded like William, the guy I thought was the actor."} })
	add({ d = {"It would make much more sense for William to be him..."} })

else
	add({ n = 'CECILIA', d = {"I'm not sure. But... as far as I can tell, it seems as if my TA for my", "freshman writing course might be the rockstar."} })
	add({ d = {"He is the type to be the center of attention..."} })
	add({ n = 'KAIRA', d = {"Oh? Is that progress?"} })
	add({ n = 'CECILIA', d = {"Maybe."} })

end

add({ n = 'CECILIA', d = {"So, if William's the rock star, could Damien even still be a part of your friends?"} })

add({ d = {"Well, actually looking at it, Damien would seem like he would be the type to", "enjoy playing the villian in a play..."} })

if gs.damien_scene == 2 then
	add({ d = {"But still, his story matches your's so closely... Could he really be something else?"} })

end

add({ n = 'KAIRA', d = {"Well, even if you got them wrong, just switch 'em!"} })

add({ n = 'CECILIA', d = {"It's even possible that Damien isn't even involved with you..."} })

add({ n = 'KAIRA', d = {"D-don't say that! You're giving up hope if you do!"} })

add({ n = 'CECILIA', d = {"Yea... I'll try to figure this mess out later. Night."} })

add({ n = 'KAIRA', d = {"Mmm, it's kind of early, but... Goodnight."}, node = 'nodes/week2/day11/morning.lua', f = next_time })
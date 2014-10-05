--You question him. Seems like a bad idea, but it's the right choice.

add({ n = 'CECILIA', d = {"And where were you?!"} })

add({ n = 'DAMIEN', d = {"I slept in. I had a looong night last night."} })

add({ n = 'CECILIA', d = {"I thought you weren't going to come... I was worried."} })

add({ n = 'DAMIEN', d = {"Oh...? You were worried about me?"} })

add({ n = 'CECILIA', d = {"H-huh? Oh, no! No no no no! I-I was worried that I'd have to do the lab all by myself!"} })

add({ n = 'DAMIEN', d = {"Oh... Your face says otherwise, but whatever. I was just joking anyways."} })

add({ n = 'CECILIA', d = {"(Ugh, he's always playing with me...)"} })

if gs.damien_scene == 1 and gs.damein >= 0 then
	add({ d = {"(Oh, I should ask him about his past...)"} })
	add({ d = {"Hey... Do you like playing music?"} })
	add({ n = 'DAMIEN', d = {"Actually, yes. I play the guitar, though I've learned to play the violin when I", "was younger."} })
	add({ n = 'CECILIA', d = {"Oh really? Wow, that's amazing!"} })
	add({ n = 'DAMIEN', d = {"What makes you ask?"} })
	add({ n = 'CECILIA', d = {"O-oh, well... Uh... M-my friend has this little brother who wanted to learn how", "to play an instrument at this band camp."} })
	add({ n = 'DAMIEN', d = {"A band camp...?"} })
	add({ n = 'CECILIA', d = {"Y-yeah! The kids can learn a lot of different instruments, like guitars and other", "rock band instruments. Have you ever heard of something like this?"} })
	add({ n = 'DAMIEN', d = {"..."} })
	add({ n = 'CECILIA', d = {"C-cause I haven't! Ahahaha..."} })
	add({ n = 'DAMIEN', d = {"Yea, actually I have. They had such a camp when I was younger, but I didn't get to", "go."} })
	add({ n = 'CECILIA', d = {"O-oh? Really?"} })
	add({ n = 'DAMIEN', d = {"Yeah. But it was probably for the better. The rockstar that ran it apparently was", "a weirdo and he suffered from a lot of lawsuits."} })
	add({ n = 'CECILIA', d = {"Ah, I think I heard of that! It was... open to kids around this area, right?"} })
	add({ d = {"You lived around here?"} })
	add({ n = 'DAMIEN', d = {"Yeah... Right here in this neighborhood, actually."} })
	add({ d = {"What's with all of the questions?"} })
	add({ n = 'CECILIA', d = {"Just... askin'. Wanted to know know more about you."} })
	add({ n = 'DAMIEN', d = {"Hm... Well, lab's over."}, f = function() gs.damien_scene = 2 end })

end 

add({ n = 'CECILIA', d = {"Oh, lab's over...? I guess we can leave going."} })

add({ n = 'DAMIEN', d = {"Yeah. Peace."} })

add({ n = 'CECILIA', d = {"Yea, bye."}, node = 'nodes/week2/day10/afternoon.lua', f = next_time })
	
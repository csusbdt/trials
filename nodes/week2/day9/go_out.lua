--Snack time

add({ n = 'CECILIA', d = {"(I need some snacks before I study tonight. To the Cafe!)"} })

add({ n = '', bg = bg.cafe, d = {"At the cafe..."} })

add({ n = 'CECILIA', d = {"(Oh, this looks yummy~ I'll get this too!)"} })

add({ n = 'FAMILIAR VOICE', d = {"Oh, is that you, Cecilia? Hello!"} })

add({ n = '', lg = lg.will, d = {"You turned around from the chip shelf and saw William standing there."} })

if gs.will_scene == 0 then
	add({ n = 'CECILIA', d = {"Oh! Hello. Do you... live on campus?"} })
	add({ n = 'WILLIAM', d = {"Yes, in Building 7 along with you... I think I saw you leave there a few times."} })
	add({ n = 'CECILIA', d = {"Oh? I don't think I've ever seen you..."} })
	add({ n = 'WILLIAM', d = {"Ahahaha, you were far before me, so, I don't expect you to have."} })

end

add({ n = 'CECILIA', d = {"Uh... Are you here to get snacks too?"} })

add({ n = 'WILLIAM', d = {"Yes, just a few. My roommates wanted to and I needed a break from grading", "assignments."} })

add({ n = 'CECILIA', d = {"Assignments? But we finished our's already..."} })

add({ n = 'WILLIAM', d = {"Yeah, this is from a different section. I'm not a TA for it, but the TA", "for that section has been very ill, so Professor Ignobert asked me to assist her."} })

add({ n = 'CECILIA', d = {"Wow, she really works ya, huh?"} })

add({ n = 'WILLIAM', d = {"She's a nice lady... Not to mention, very accomplished in her field."} })

add({ d = {"So, getting on her good side grants me a good source for letters", "of recommendation."} })

add({ n = 'CECILIA', d = {"Ah, that makes sense. But, do you really need those now?"} })

add({ n = 'WILLIAM', d = {"Yes, some scholarships and internships require them."} })

add({ n = 'CECILIA', d = {"Crazy... Okay. Well, I need to get going. I hope you get through it!"} })

add({ n = 'WILLIAM', d = {"Alright, Goodnight!"} })

add({ n = 'CECILIA', d = {"Night."} })

add({ n = '', lg = '', bg = bg.cecilia_room_night, d = {"After paying for your snacks, you leave the cafe and went home."} })

add({ d = {"You took some time to study, but you didn't really pay much attention", "to it since you've seen this material before."} })

add({ d = {"..."} })

add({ 
	n = 'CECILIA', 
	d = {"(Ugh, this is so boring... I keep dozing off... I'm gonna go to sleep before", "I fall asleep at the desk.)"},
	node = 'nodes/week2/day10/morning_scene.lua',
	f = next_time
 })



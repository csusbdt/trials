--Little chat time with Damien

add({ n = 'CECILIA', d = {"(I'll just talk with him. Yea... He won't snap at me then!)"} })

add({ d = {"Hey! What's up?"} })

add({ n = 'DAMIEN', d = {"...Are you stalking me or something?"} })

add({ n = 'CECILIA', d = {"Wh-whaaat? W-why would I do something like that?"} })

add({ d = {"Noooo, I just... had to come here to visit a professor and I saw you, so... I", "thought I should talk to my lab partner. That's all."} })

add({ n = 'DAMIEN', d = {"...What professor are you gonna talk to?"} })

add({ n = 'CECILIA', d = {"Uh... Y'know... Good 'Ole Mr.Smith!"} })

add({ n = 'DAMIEN', d = {"...Ahaha..."} })

add({ n = 'CECILIA', d = {"H-huh?"} })

add({ n = 'DAMIEN', d = {"Ahahahahahaha! This is too golden!"} })

add({ n = 'CECILIA', d = {"What... what is?"} })

add({ n = 'DAMIEN', d = {"You! You're trying to lie so much...! It's so transparent!"} })

add({ d = {"If you even had any classes in the soc building, you'd know there are no", "professor's offices in here."} })

add({ n = 'CECILIA', d = {"What...?"} })

add({ n = 'DAMIEN', d = {"Yeah! But, you didn't wanna be seen as a creep, so you told a terrible lie! Ahahaha!"} })

if gs.damien >= 30 then
	add({ d = {"But seriously, if you wanted to talk to me, you could've just said so..."} })
	add({ n = 'CECILIA', d = {"H-huh!? Wh-who said I--"} })
	add({ n = 'DAMIEN', d = {"Hahahaha, well, you must've since you followed me over here."} })
	add({ d = {"Don't be so shy, let's talk for a bit."} })
	add({ n = 'CECILIA', d = {"I'm not being shy... I just didn't want be creepy to you."} })

else
	add({ d = {"So, what do you want?"} })
	add({ n = 'CECILIA', d = {"I just wanted to talk a bit..."} })
	add({ n = 'DAMIEN', d = {"Heh, I'm not sure if I want to talk to a creepy stalker."} })
	add({ n = 'CECILIA', d = {"I wasn't stalking you!"} })
	add({ n = 'DAMIEN', d = {"Uh huh... Whatever you say..."} })
end

add({ n = 'DAMIEN', d = {"So, what did you want from me?"} })

add({ n = 'CECILIA', d = {"Just to talk. Let's see... How about we talk about..."} })

add({ n = '', d = {"You and Damien talked a bit about different subjects for a while."} })

add({ d = {"..."} })

add({ d = {"Once the conversation started getting dry, you checked your phone saw that it was time for your next class."} })

add({ d = {"After saying your farewell, you left out of the Social Studies building and went to your next class."}, node = 'nodes/week2/day10/night10.lua', f = next_time })


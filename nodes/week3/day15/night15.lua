--Nighttime.

add({ n = '', d = {"After classes ended..."}, f = next_time })

if gs.ruby_scene == 4 then
	add({ n = '', bg = bg.cecilia_room_night, d = {"You returned home from your exhausting day at school. Kaira was sitting on your bed,", "reading a book."} })
	add({ n = 'KAIRA', lg = lg.ghost, d = {"Cecilia! You're back! Thank you for leaving your book out today, History is so", "interesting!"} })
	add({ n = 'CECILIA', d = {"Hah, you really think so?"} })
	add({ d = {"Oh, by the way... I learned a little more about you!"} })
	add({ d = {"I think Ruby and Lily are both friends of your's... They hung out with a group", "with two boys and you."} })
	add({ d = {"And apparently you died from being crushed by a fallen construction building,", "probably this dorm."} })
	add({ n = 'KAIRA', d = {"...Construction?"} })
	add({ d = {"..."} })
	add({ n = '', d = {"Kaira become silent as she held her head in her hand."} })
	add({ n = 'KAIRA', d = {"...I think... that may be right."} })
	add({ n = 'CECILIA', d = {"It makes sense... You being stuck in this dorm, their group... It can't be just", "a coincidence!"} })
	add({ d = {"And... apparently the reason why she had memory loss was because of the traumatic", "shock."} })
	add({ d = {"But she says she wants to see you, so... I'm going to try to get her come here, okay?"} })
	add({ n = 'KAIRA', d = {"Yes, please do... I want to see her again too."} })
	add({ n = 'CECILIA', d = {"Don't worry you can count on me!"} })
	add({ d = {"For right now, I'm going to go get something to eat. Talk to you later!"} })
	add({ n = 'KAIRA', d = {"Ohhh, are you gonna eat Erika's food again? Maaan, I wanna eat some too!"} })
	add({ n = 'CECILIA', d = {"Nuh uh! Mine!"} })
end

add({ n = 'CECILIA', bg = bg.kitchen, d = {"Okay... What shall I eat tonight?"} })

add({ n = 'ERIKA', d = {"Hey, fancy meeting you here."} })

add({ n = '', d = {"Erika strolled out of her room."} })

add({ n = 'CECILIA', d = {"Oh hey, what's up?"} })

add({ n = 'ERIKA', d = {"Eh, nothing much..."} })

if gs.ruby_scene == 4 then
	add({ d = {"By the way, why haven't you come to the club I told you about last week yet?"} })
	add({ n = 'CECILIA', d = {"The club? Oh... I keep forgetting... Trying to help out Kaira is proving to be be working that I thought."} })
	add({ d = {"Oh, also, I certain Ruby and her friend might be connected to Kaira!"} })
	add({ d = {"I overheard them talking things that line up with Kaira's past!"} })
	add({ n = 'ERIKA', d = {"Oh? That's great! Two down and three more to go!"} })
	add({ n = 'CECILIA', d = {"...Don't remind me. There's still so many left to find..."} })
	add({ d = {"But don't worry, as soon as I get Ruby to visit Kaira, I'll go to your club, okay?"} })
	add({ n = 'ERIKA', d = {"Alright! I'm excited!"} })
end

add({ d = {"Oh so... I'm about to cook, do you want some?"} })

add({ n = 'CECILIA', d = {"Oh what'cha making? Does it have meaties?!"} })

add({ n = 'ERIKA', d = {"M-meaties...? No, it's actually a vegan dish I found today that I want to try out."} })

add({ n = 'CECILIA', d = {"V-vegan? Ugh... I'll try a little, but I'm gonna makes meaty spaghetti for my entree..."} })

add({ n = 'ERIKA', d = {"Ahahaha, alright! Let's get cooking!"} })

add({ n = '', bg = '', d = {"..."} })

add({ d = {"........."} })

add({ bg = bg.kitchen, d = {"The food was delicious!"} })

add({ 
	d = {"You and your roommate share a wonderful time together, eating and talking about", "this week. Before you know it, it's late and you decide to study a bit before going to", "bed."}, 
 	node = 'nodes/week3/day16/afternoon.lua',
	f = next_time
})
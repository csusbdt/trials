--The wrong choice. Deal with it.

add({ n = '', d = {"You hear a knock on the door."} })

add({ n = 'ERIKA', d = {"Hey, what are you up to, Cecilia?"} })

add({ n = 'CECILIA', d = {"Hey, I was just about to go take a walk, wanna come?"} })

add({ n = 'ERIKA', d = {"Hmm... It does sound nice... and it's dangerous for you to be walking around at", "night..."} })

add({ d = {"So, why not?"} })

add({ n = 'CECILIA', d = {"Hey, wait. I'm only gonna walk around in the lit areas..."} })

add({ n = 'ERIKA', d = {"Hahahaha, alright, alright. Let's go."} })

add({ bg = '', n = '', d = {"You walked around a bit with Erika, talking about different things."} })

add({ d = {"I still need the kitch BG, but you came back."} })

add({ n = 'ERIKA', d = {"Alright, I'm gonna shower and then go to sleep."} })

add({ n = 'CECILIA', d = {"Mmkay. I'll do the same after you..."} })

add({ 
	bg = bg.cecilia_room_night, 
	d = {"When you finished your shower, you realized the time and went to bed."}, 
	node = 'nodes/week2/day8/physics.lua', 
	f = next_time 
})
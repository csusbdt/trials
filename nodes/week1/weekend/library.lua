--The "right" choice, weekend 1, sunday night.

add({ n = 'CECILIA', d = {"Well, I guess I should go to the library. I might find an interesting book there."} })

add({ n = '', bg = '', d = {"..."} })

add({ d = {"No BG yet"} })

add({ d = {"At the Library... You searched through shelves of books for some time..."} })

add({ n = 'CECILIA', d = {"Hmm... Nothing that looks interesting."} })

add({ d = {"(Hey wait, is that William?)"} })

add({ n = '', d = {"You see William sitting alone at a table with a open book and notebook."} })

add({ lg = lg.will, n = 'CECILIA', d = {"(Yea... That is him! He's studying... Should I talk to him?)"} })

add({ d = {"(Oh, he saw me  and he smiled at me... I guess I have no choice.)"} })

add({ n = 'WILLIAM', d = {"Good evening, Cecilia. What are you doing here?"} })

add({ n = 'CECILIA', d = {"I wanted to look for book for me to read on my free time."} })

add({ n = 'WILLIAM', d = {"Oh? You don't look like a reader..."} })

add({ n = 'CECILIA', d = {"Oh, I don't...? Should I start wearing glasses or something like that?"} })

add({ n = 'WILLIAM', d = {"Glasses? Ahahahaha... Hmmm... I think you would look cute in them."} })

add({ n = 'CECILIA', d = {"A-ah... What?"} })

add({ n = 'WILLIAM', d = {"Hmhmhm, I'm only joking."} })

add({ n = 'CECILIA', d = {"(Ahahah, thanks...)"} })

add({ d = {"But uh... hey, are you studying?"} })

add({ n = 'WILLIAM', d = {"I'm doing homework. My book hasn't arrived yet, so I'm using the one they have", "available here."} })

add({ n = 'CECILIA', d = {"Oh, that makes sense."} })

add({ d = {"Well, uh... I'll leave you to continue your work. Hang in there!"} })

add({ n = 'WILLIAM', d = {"Hahah, thanks! I'll see you later, Cecilia."} })

add({ n = '', lg = '', d = {"..."} })

add({ 
	bg = bg.cecilia_room_night, 
	d = {"When you got back to your room, you realized the time and went to bed."}, 
	node = 'nodes/week2/day8/physics.lua', 
	f = next_time 
})


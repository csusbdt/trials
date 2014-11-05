--Encounter with Will.

add({ n = '', bg = bg.kitchen, d = {"In the morning..."} })

add({ n = 'CECILIA', d = {"(Ah... I woke up too early... There's really not to much to do here, so...)"} })

add({ d = {"(I guess I should go to school then...)"} })

add({ n = '', bg = '', d = {"..."} })

add({ bg = bg.physics, d = {"At school..."} })

add({ n = 'CECILIA', d = {"(Hey, that's William!)"} })

add({ n = '', d = {"Sure enough, you find William waving goodbye to a girl as she hesitantly leaves his", "side."} })

add({ lg = lg.will, d = {"He turned towards you and saw you staring at him. In response, he gave a little", "chuckle and approached you."} })

add({ n = 'WILLIAM', d = {"Oh, hello there. I don't see you often on Mondays. What brings you here?"} })

add({ n = 'CECILIA', d = {"Hey. I came here early 'cause I woke up and couldn't go back to sleep... Hahahahah..."} })

add({ n = 'WILLIAM', d = {"Stayed up too late again?"} })

add({ n = 'CECILIA', d = {"Wait, what do you mean, 'again'?!"} })

add({ n = 'WILLIAM', d = {"You must stay up late. You always come to class so late and end up falling asleep", "in it."} })

add({ n = 'CECILIA', d = {"I-I..."} })

add({ n = 'WILLIAM', d = {"Heheheh, there's nothing wrong with it. But you should really get some sleep."} })

if gs.will_scene == 2 then
	add({ n = '', d = {"William leaned in really close to you, slightly brushing your cheek in the progress."} })
	add({ n = 'wILLIAM', d = {"You won't get enough beauty sleep by staying up late, you know..."} })
	add({ n = 'CECILIA', d = {"...!!"} })
	add({ d = {"(T-too close!)"} })
	add({ n = 'WILLIAM', d = {"Heheheh..."} })
end

add({ d = {"Well, I have to be leaving now. Goodbye."} })

add({ n = '', lg = '', d = {"Without saying another word, he left you there standing like an idiot."} })

add({ n = 'CECILIA', d = {"(Worrying about my sleep... Geez, does he read this stuff from a terrible", "magazine or something?)"} })

add({ d = {"..."} })

add({ 
	d = {"(It's almost time for my class, I better get going...)"}, 
	f = function()
		gs.will = gs.will +10
	end,
	node = 'nodes/week3/day15/physics.lua'
})
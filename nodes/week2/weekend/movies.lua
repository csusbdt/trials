--Encounter William. Wootz.

add({ n = 'CECILIA', d = {"How about we go to a movie? I heard there's this really terrible one that's", "so bad, it's good!"} })

add({ n = 'ERIKA', d = {"Oh, I think I know that one! I remember seeing it and thinking of you, since", "you do like those kinds of movies..."} })

add({ n = 'CECILIA', d = {"Hehehe, so, how about it?"} })

add({ n = 'ERIKA', d = {"Sure, only if you treat me to a large slushie!"} })

add({ n = 'CECILIA', d = {"Heh... whatever happened to maintaining that 'feminine figure'?"} })

add({ n = '', bg = '', d = {"..."} })

add({ d = {"At the Movie Theater..."} })

add({ d = {"You two were in line in front of the Movie Theater waiting the tickets when", "you felt someone tug at your sleeve."} })

add({ n = 'ERIKA', d = {"Hey, it's William! He's your TA for English, right?"} })

add({ n = '', d = {"You turned to where your friend was pointing to and saw the bright blonde", "hair of the very famous male from your school."} })

add({ n = 'CECILIA', d = {"Huh, you're right. He doesn't seem like the type to go to a movie theater,", "especially one that is as cheap as this one."} })

add({ n = 'ERIKA', d = {"Hey, just because his family is rich doesn't mean he is. He probably has to", "earn his own pocket money."} })

add({ n = 'CECILIA', d = {"Makes sense..."} })

add({ n = 'ERIKA', d = {"..."} })

add({ d = {"You're not going to go say 'hi'?"} })

add({ n = 'CECILIA', d = {"To him? Why should I?"} })

add({ n = 'ERIKA', d = {"B-because, I mean..."} })

add({ n = 'CECILIA', d = {"Um... If you wanna say something, go say it by yourself."} })

add({ n = 'ERIKA', d = {"N-no! I mean, I don't know him like you do... Just go say something, try", "to invite him to watch something with us!"} })

add({ n = '', d = {"Erika was very persistant, so you decided to entertain her whims."} })

if gs.will_scene == 1 or gs.will_scene == 2 then
	add({ 
		n = 'CECILIA', 
		d = {"(Well, we do talk a bit... Maybe it won't be that bad?)"}, 
		node = 'nodes/week2/weekend/will1.lua',
		f = function()
			gs.will = gs.will + 5
		end
	})

else
	add({ 
		n = 'CECILIA', 
		d = {"(I really do not want to do this... I mean, we don't really know each other...)"}, 
		node = 'nodes/week2/weekend/will0.lua',
	}) 
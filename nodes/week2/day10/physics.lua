--Damien didn't come to class, but showed up for the lab.

add({ n = '', bg = bg.lecture_hall, d = {"In Physics Lecture..."} })

add({ n = 'CECILIA', d = {"(Damien isn't here again...)"} })

add({ d = {"(I can't believe it he ditched again... And on Lab day too... He's gonna pay.)"} })

add({ n = '', d = {"..."} })

add({ d = {"........"} })

add({ bg = bg.physics_lab, d = {"In the Lab..."} })

add({ d = {"You see Damien waiting there in the lab."} })

add({ 
	n = 'CECILIA', 
	d = {"(Oh, he is here...)"},
	lg = lg.damien_eyes_closed,
	c = {
		{t = "Ask him where he was.", f = function() gs.damien = gs.damien + 10 end, node = 'nodes/week2/day10/question_damien.lua'},
		{t = "Do the lab as normal.", f = function() gs.damien = gs.damien + 5 end, node = 'nodes/week2/day10/lab.lua'}
	}
})
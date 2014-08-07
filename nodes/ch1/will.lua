-- Scene with Will

add({
	n = 'CECILIA',
	lg = '',
	sm = sm.mc,
	bg = bg.cecilia_room_day,
	f = next_morning,
	d = "....."
})

add({ n = '', d = {"You woke up, the memories of what happened last night still", "fresh in your mind."} })

add({ d = {"You didn't waste any time thinking about it, and prepared for class as normal..."} })

add({ bg = bg.lecture_hall, d = {"During your Freshman Writing course..."} })

add({ n = 'Professor', d = {"And that's the syllabus. Any ques--"} })

add({ n = '???', d = {"I'm sorry, Professor Ignobert!"} })

add({ n = '', d = {"Someone comes through the door, gasping for air..."} })

add({ n = 'Professor', lg = lg.will_nervous, d = {"Oh, and there's my TA! William, you're a bit late."} })

add({ n = 'WILLIAM', d = {"...I'm very sorry Ma'am."} })

add({ n = '', d = {"The new guy approached the teacher and sat down in a chair behind", "the teacher's desk and started to converse with her."} })

add({ n = 'FEMALE STUDENT 1', lg = '',  d = {"Hey, he's pretty cute~!"} })

add({ n = 'FEMALE STUDENT 2', d = {"Yea, haven't you heard? He's like, one of the most popular guy", "on campus! Almost every girl knows about him!"} })

add({ n = 'FEMALE STUDENT 1', d = {"Well I can see why! He's gorgeous!"} })

add({ n = 'CECILIA', sm = sm.mc, d = {"(Gorgeous...? That's stretching it. He's not THAT good-looking...", "But, now that I look around the room, every girl is swooning over", "him! Even the teacher is blushing while she talks to him!)"} })

add({ n = 'FEMALE STUDENT 2', d = {"Well, what makes him even more desirable is the fact that he's", "flithy rich! I hear his family runs this bakery chain that's even went", "over seas!"} })

add({ n = 'CECILIA', d = {"(Oh, that's why...)"} })

add({ n = 'WILLIAM', lg = lg.will, d = {"Alright, everyone! I'm your TA for this class. Make sure to", "do all of the homework, or you won't make it through the class, okay?"} })

add({ n = '', d = {"You notice him star directly at you when he mentioned failing the class..."} })

add({ 
	n = 'CECILIA', 
	d = { "(Did he... just smirk at me? Is he making fun of me!? How should I","respond back to him...?)" },
	c = {
		{ t = "Challenge him >:I", f = function() gs.will = gs.will - 30 end, node = 'nodes/ch1/will_a.lua' },
		{ t = "Be Cocky >.>", f = function() gs.will = gs.will - 50 end, node = 'nodes/ch1/will_b.lua' },
	}
})

finish = function()
	add({ d = "Good bye Will." })
	add({ 
		n    = '', 
		lg   = '', 
		bg   = bg.cecilia_room_day, 
		d    = "I had lunch and now it's afternoon.", 
		f    = next_afternoon,
		node = 'nodes/ch1/night2.lua' 
	})
end



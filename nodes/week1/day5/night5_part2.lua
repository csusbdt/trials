--talk with Erika. You can go out tonight too!

add({ n = 'CECILIA', d = {"Hey, Erika!"}, bg = bg.ericka_room })

add({ n = 'ERIKA', d = {"Hm? Yes?"} })

add({ n = 'CECILIA', d = {"Hey, what's up?"} })

add({ n = 'ERIKA', d = {"Nothing much, just trying to finish this book before school starts getting", "really busy. You?"} })

add({ n = 'CECILIA', d = {"Hmm, not a bad idea... I just wanted to talk to you since I haven't spoken to you", "in a while..."} })

add({ n = 'ERIKA', d = {"You've been busy helping Kaira out. It's understandable. By the way, made any progress?"} })

add({ n = 'CECILIA', d = {"Oh, listen to this!"} })

add({ n = '', d = {"You passed a little time talking with Erika..."} })

add({ d = {"..."} })

add({ n = 'ERIKA', d = {"Hm... It's getting late. What are you going to do now?"} })

add({ n = 'CECILIA', d = {"I don't really feel tired, so I guess I'll stay up a bit. Going to bed?"} })

add({ n = 'ERIKA', d = {"Yea, beauty sleep is important, after all. I'll talk to you tomorrow.", "Night!"} })

add({ n = 'CECILIA', d = {"Night..."} })

add({ bg = bg.cecilia_room_night, d = {"(Man, I don't feel tired at all... What can I do to let go of some steam?)"} })

add({ 
	d = {"(It's a little late, but I think some places on campus is still open... Maybe I should", "go somewhere?)"}, 
	c = {
		{t = "Go to the Library."}, node = 'nodes/week1/day5/library.lua'},
		{t = "Go to the Cafe."}, f = function() gs.damien = gs.damien + 15 end, node = 'nodes/week1/day5/night_cafe.lua'}
	}
})

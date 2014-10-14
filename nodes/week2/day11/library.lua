--Check for gs.will_scene == 2

add({ n = 'CECILIA', d = {"(Well, there's not really many places for me to go tonight, so... the library it is.)"} })

add({ n = '', d = {"..."}, bg = '' })

add({ d = {"........."} })

add({ d = {"The library, after browsing around a bit..."} })

add({ n = 'CECILIA', d = {"(Oh, it's William...)"} })

if gs.will_scene == 2 then
	add({ 
		d = {"(I wonder if he needs help tonight...)"}, 
		lg = lg.will, 
		f = function() 
			gs.will = gs.will + 5 
		end, 
		node = 'nodes/week2/day11/tutor_will.lua' 
	})

else
	add({ d = {"(Should I really interrupt him...?)"}, lg = lg.will })
end

add({ n = 'WILLIAM', d = {"Oh, Cecilia?"} })

add({ n = 'CECILIA', d = {"O-oh... Hi! You studying?"} })

add({ n = 'WILLIAM', d = {"Just a little."} })

add({ n = 'CECILIA', d = {"Oh, I'm sorry... I won't bother you."} })

add({ n = 'WILLIAM', d = {"...Did I say you were bothering me?"} })

add({ n = 'CECILIA', d = {"H-huh?"} })

add({ n = 'WILLIAM', d = {"Because if I thought you were, I wouldn't have called out to you first."} })

add({ n = 'CECILIA', d = {"O-oh..."} })

add({ n = 'WILLIAM', d = {"Come, sit. Let's talk for a little bit."} })

add({ n = '',  d = {"You and William talked for a few minutes before he returned to his work."} })

add({ d = {"...You decided to return to your room for tonight."} })

add({ d = {"..."}, bg = '' })

add({ 
	bg = bg.cecilia_room_night, 
	d = {"You retired to your room for the night and decided to go to bed."}, 
	f = function()
		gs.will = gs.will + 5
	end,
	node = 'nodes/week2/day12/afternoon.lua'
})
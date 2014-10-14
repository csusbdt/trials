--Nighttime. You go out to the library or the cafe.

add({ n = 'CECILIA', bg = bg.cecilia_room_night, d = {"(All of my homework for tonight is done... And the night is so young...)"}, f = next_time })

add({ d = {"(I think I'll go somewhere tonight...)"} })

if gs.will_scene == 2 then
	add({ d = {"(And maybe William will be in the library studying history tonight...)"} })
end

add({ 
	d = {"(Where should I go?)"},
	c = {
		{t = "Go to the Cafe.", f = function() gs.ruby = gs.ruby + 5 end, node = 'nodes/week2/day11/cafe_night.lua'},
		{t = "Go to the Library.", node = 'nodes/week2/day11/library.lua'}
	}
})
--+20 to be able to eat with him.

if gs.damien >= 20 then

	add({ 
		n = 'CECILIA', 
		d = {"(I should eat with him. He seems a little bit nicer to me than when we first met...)"},
		node = 'nodes/week2/day10/damien_eat_success.lua',
		f = function() 
			gs.damien = gs.damien + 5
		end
	})

else

	add({
		n = 'CECILIA', 
		d = {"(I should try to eat with him... Maybe he'll let me eat with him.)"},
		node = 'nodes/week2/day10/damien_eat_fail.lua'
	})
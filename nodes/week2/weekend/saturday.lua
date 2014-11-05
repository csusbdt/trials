--[[
Woot! Let's speed things up a bit!
So, Erika's gonna give you a list of places to go (each leading to one person). 
Just so you guys can do something.
--]]

add({ n = '', bg = bg.kitchen, d = {"You and Erika meet in the kitchen around noon."} })

add({ n = 'ERIKA', d = {"Morning. I see you're still sleeping in like summer."} })

add({ n = 'CECILIA', d = {"H-hey, it's only the second week. Bad habits are hard to kill!"} })

add({ d = {"Not only that, but I was actually thinking of what we can do together this weekend."} })

add({ n = 'ERIKA', d = {"Oh really? That's surprising."} })

add({ n = 'CECILIA', d = {"W-what? I just wanna go on a little date with you! I-is that so bad!?"} })

add({ n = 'ERIKA', d = {"Heheheheh, no... So, where do you wanna go?"} })

add({ 
	n = 'CECILIA', 
	d = {"Okay, so I thought we could go..."},
	c = {
		{t = "To a Restaurant!"}, node = 'nodes/week2/weekend/restaurant.lua'},
		{t = "On a coffee run!"}, node = 'nodes/week2/weekend/coffee_shop.lua'},
		{t = "To the Movies!"}, node = 'nodes/week2/weekend/movies.lua'}
	}
})


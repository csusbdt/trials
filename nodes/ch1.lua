add({ n = '', bg = '', sm = 'sm/MC.png', m = 'music/Overworld.wav', d = { "I overslept.", "I'm going to be late for class." } })

add({ d = { "..." } })

add({ n = 'CECILIA', sm = 'sm/MC_shock.png', d = { "Owwwwww!" } })

add({ n = '', lg = 'lg/ghost_shock.png', d = { "I bumped into a strange girl." } })

add({ n = 'STRANGE GIRL', d = { "Owww...." } })

add({ n = 'CECILIA', m = 'music/friendly.wav', d = { "Watch where you’re going!", "Geez, you’re going to make me late!" } })

add({ n = 'STRANGE GIRL', sm = 'sm/MC.png', d = { "...S-sorry! I’m sorry! I..." } })

add({ d = { "..." } })

local function finish()
	add({ n = 'STRANGE GIRL', d = { "I don't know what to do.", "My heart is broken." } })
	add({ d = { "Because of you." } })
	add({ f = function() gonode('nodes/physics.lua') end })
end

local function appologize()
	gs.ruby = gs.ruby - 40 
	gs.lily = gs.lily - 60
	add({ n = 'CECILIA', d = { "I'm sorry.", "I'm just in a big hurry to get to class on time." } })
	add({ n = 'STRANGE GIRL', d = { "This vase belonged to my grandmother.", "Sob, sob, sob, ..." } })
	finish()
end

local function leave()
	gs.ruby = gs.ruby - 60 
	gs.lily = gs.lily - 80
	add({ n = 'CECILA', d = { "Sorry. Gotta go." } })
	finish()
end

add({ 
	n = '', 
	d = { "The strange girl notices her broken vase and starts to cry." },
	c = {
		{ t = "Apologize and be late.", f = appologize },
		{ t = "Leave the girl.", f = leave }
	}
})


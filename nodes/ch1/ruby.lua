add({ n = '', bg = '', sm = sm.mc, m = mu.other, f = next_time, d = { "I overslept.", "I'm going to be late for class." } })

add({ d = { "I need to run." } })

add({ n = 'CECILIA', sm = sm.mc_shock, lg = lg.ghost_shock, d = { "Owwwwww!" } })

add({ n = '', d = { "I bumped into a strange girl." } })

add({ n = 'STRANGE GIRL', d = { "Owww...." } })

add({ n = 'CECILIA', d = { "Watch where you’re going!", "Geez, you’re going to make me late!" } })

add({ n = 'STRANGE GIRL', sm = sm.mc, d = { "...S-sorry! I’m sorry! I..." } })

add({ d = { "..." } })

local ruby_appologize
local ruby_leave
local ruby_finish

add({ 
	n = '', 
	d = { "The strange girl notices her broken vase and starts to cry." },
	c = {
		{ t = "Apologize and be late.", f = function() ruby_appologize() end },
		{ t = "Leave the girl.", f = function() ruby_leave() end }
	}
})

ruby_appologize = function()
	gs.ruby = gs.ruby - 40 
	gs.lily = gs.lily - 60
	add({ n = 'CECILIA', d = { "I'm sorry.", "I'm just in a big hurry to get to class on time." } })
	add({ n = 'STRANGE GIRL', d = { "This vase belonged to my grandmother.", "Sob, sob, sob, ..." } })
	ruby_finish()
end

ruby_leave = function()
	gs.ruby = gs.ruby - 60 
	gs.lily = gs.lily - 80
	add({ n = 'CECILA', d = { "Sorry. Gotta go." } })
	ruby_finish()
end

ruby_finish = function()
	add({ n = 'STRANGE GIRL', d = { "I don't know what to do.", "My heart is broken." } })
	add({ d = { "Because of you." }, node = 'nodes/ch1/damien.lua' })
end


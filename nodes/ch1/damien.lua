-- Scene with Damien

add({ n = 'DAMIEN', lg = lg.damien, sm = sm.mc, m = mu.friendly, d = { "I am Damien.", "..." } })

add({ n = 'CECILIA', sm = sm.mc_shock, d = { "Nice to meet you." } })

local choice1
local choice2
local finish

add({ 
	n = '', 
	d = { "You decide." },
	c = {
		{ t = "choice 1", f = function() choice1() end },
		{ t = "choice 2", f = function() choice2() end }
	}
})

choice1 = function()
	add({ n = 'CECILIA', d = { "I picked choice 1.", "..." } })
	finish()
end

choice2 = function()
	add({ n = 'CECILA', d = { "I picked choice 2." } })
	finish()
end

finish = function()
	add({ n = '', d = { "I'm going to skip afternoon." }, node = 'nodes/ch1/night1.lua' })
end



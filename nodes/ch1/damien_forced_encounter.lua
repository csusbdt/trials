add({ n = 'DAMIEN', lg = lg.damien, sm = sm.mc, d = "Hi." })

add({ n = 'CECILIA', sm = sm.mc_shock, d = "I wasn't expecting to see you today." })

add({ n = '', sm = sm.mc, d = "Some discussion..." })

local choice1
local choice2
local damien_finish

add({ 
	n = '', 
	d = { "You decide." },
	c = {
		{ t = "choice 1", f = function() choice1() end },
		{ t = "choice 2", f = function() choice2() end }
	}
})

choice1 = function()
	add({ n = 'CECILIA', d = { "I choose 1." } })
	finish()
end

choice2 = function()
	add({ n = 'CECILIA', d = { "I choose 2." } })
	finish()
end

finish = function()
	add({ n = '', d = { "COMMON DIALOG" }, node = 'nodes/ch1/side_quests.lua' })
end



-- Foced encouter with Damien in physics class

add({ n = 'DAMIEN', lg = lg.damien, sm = sm.mc, f = next_time, d = { "Forced encounter.", "..." } })

add({ n = 'CECILIA', sm = sm.mc_shock, d = { "You again!" } })

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



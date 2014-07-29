-- Quest with Ruby in Art Studio

add({ n = 'RUBY', lg = lg.ruby_worry, sm = sm.mc, d = { "You are in the art studio.", "..." }, f = next_afternoon })

add({ n = 'CECILIA', sm = sm.mc_shock, d = { "Yes, I see easels and weasels all around me." } })

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
	add({ n = 'CECILIA', d = { "I chose choice 1." } })
	finish()
end

choice2 = function()
	add({ n = 'CECILIA', d = { "I chose choice 2." } })
	finish()
end

finish = function()
	add({ n = '', d = { "..." }, node = 'nodes/ch1/side_quests.lua' })
end


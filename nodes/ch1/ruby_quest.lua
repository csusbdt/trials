-- Quest with Ruby in Art Studio

add({ 
	n = '', 
	lg = '', 
	sm = sm.mc, 
	bg = bg.paint_studio,
	d = "I see easels all around me.", 
	f = next_afternoon 
})

add({ 
	n = 'RUBY', 
	lg = lg.ruby_worry, 
	d = "Hi.",
	f = function() print('I still need to develop logic for ruby_quest.lua.') end
})

add({ n = 'CECILIA', d = "Hi." })

add({ n = '', d = "Discussion ..." })

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


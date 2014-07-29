add({ n = '', lg = '', sm = sm.mc, d = { "I wonder what to do.", "..." } })

local ruby_quest
local choice2
local choice3
local finish

add({ 
	n = '', 
	d = { "You decide on side quest." },
	c = {
		{ t = "Ruby quest", f = function() ruby_quest() end },
		{ t = "choice 2", f = function() choice2() end },
		{ t = "choice 3", f = function() choice3() end }
	}
})

ruby_quest = function()
	add({ n = 'CECILIA', d = { "You picked the Ruby quest." }, node = 'nodes/ch1/ruby_quest.lua' })
end

choice2 = function()
	add({ n = 'CECILIA', d = { "You picked choice 2." } })
	add({ n = '', d = { "END" } })
end

choice3 = function()
	add({ n = 'CECILIA', d = { "You picked choice 3." } })
	add({ n = '', d = { "END" } })
end



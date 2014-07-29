-- Scene with Will

add({ n = 'WILL', lg = '', sm = sm.mc, bg = bg.cecilia_room_day, f = next_morning, d = { "I am Will.", "..." } })

add({ n = 'CECILIA', sm = sm.mc_shock, d = { "Hi." } })

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
	add({ n = 'CECILIA', d = { "I took choice 1." } })
	finish()
end

choice2 = function()
	add({ n = 'CECILA', d = { "I took choice 2." } })
	finish()
end

finish = function()
	add({ n = '', d = { "I will skip afgernoon again." }, node = 'nodes/ch1/night2.lua' })
end



add({ 
	n = '',
	lg = '',
	sm = sm.mc,
	bg = bg.cecilia_room_day,
	d = "I wonder what to do."
})

local c = {
	{ t = "Do nothing.", f = next_time, node = 'nodes/ch1/side_quests.lua' },
	{ t = "Start Chapter 2", node = 'nodes/ch2/start.lua' }
}

if not gs.ch1_ruby_quest_complete and is_morning() then
	table.insert(c, { t = "Ruby quest", node = 'nodes/ch1/ruby_quest.lua' })
end

if not sf.ch1_damien_quest_complete then
	table.insert(c, { t = "Damien quest", node = 'nodes/ch1/damien_quest.lua' })
end

add({ 
	n = '', 
	d = { "What would you like to do?" },
	c = c
})


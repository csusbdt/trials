-- Quest with Ruby in Art Studio

add({ 
	n = '', 
	lg = '', 
	sm = sm.mc, 
	bg = bg.paint_studio,
	d = "I going to help Ruby.", 
	f = next_afternoon 
})

add({ 
	n = 'RUBY', 
	lg = lg.ruby_worry, 
	d = "Hi."
})

add({ n = 'CECILIA', d = "Hi." })

add({ n = '', d = "Discussion ..." })

local choice1
local choice2
local finish
local result

add({ 
	n = '', 
	d = { "Decide what to do." },
	c = {
		{ t = "choice 1", f = function() choice1() end },
		{ t = "choice 2", f = function() choice2() end }
	}
})

choice1 = function()
	add({ n = 'CECILIA', d = { "I chose 1." }, f = function() result = 10 end })
	finish()
end

choice2 = function()
	add({ n = 'CECILIA', d = { "I chose 2." }, f = function() result = -10 end })
	finish()
end

finish = function()
	add({ 
		n = '', 
		d = { "..." }, 
		f = function() 
			next_time()
			gs.ruby = gs.ruby + result
			gs.ch1_ruby_quest_count = (gs.ch1_ruby_quest_count or 0) + 1
			if gs.ch1_ruby_quest_count >= 2 then
				gs.ch1_ruby_quest_count = nil
				gs.ch1_ruby_quest_complete = 'yes'
			end
		end, 
		node = 'nodes/ch1/side_quests.lua' 
	})
end


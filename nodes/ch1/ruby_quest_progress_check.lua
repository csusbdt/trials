--Checks for number of time completed.

if gs.ruby_quest_complete == 0 then
	add({ d = {"..."}, node = 'nodes/ch1/ruby_quest_no_complete.lua' })

elseif gs.ruby_quest_complete == 1 then
	add({ d = {"..."}, node = 'nodes/ch1/ruby_quest_one_complete.lua' })

elseif gs.ruby_quest_complete == 2 then 
	add({ d = {"..."}, node = 'nodes/ch1/ruby_quest_two_complete.lua' })

elseif gs.ruby_quest_complete == 3 then
	add({ d = {"..."}, node = 'nodes/ch1/ruby_quest_final_complete.lua' })
end
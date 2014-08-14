--inital checking.

add({ n = 'CECILIA', d = {"(I wanna check out the Art rooms tonight.)"} })

add({ n = '', d = {"Putting on your shoes and grabbing your bag, you head", "out into the night to the art room."} })

add({ bg = bg.paint_studio, d = {"In an Art Studio..."} })

if gs.ruby_quest == false then 
	add({ d = {"The Art studio is empty. The smell of paint and clay is", "a bit overwhelming..."} })
	add({ n = 'CECILIA', d = {"Huh, so this is one of the Art rooms people", "talk a lot about outside of the college."} })
	add({ d = {"Everything looks so... professional."} })
	add({ n = '', d = {"You looked around for a bit before a professor entered the", "studio."} })
	add({ n = 'PROFESSOR', d = {"Oh! I didn't know someone was still here. Did you need", "something?"} })
	add({ n = 'CECILIA', d = {"Ah, no. I was just looking around. I'll be leaving", "now."} })
	add({ n = 'PROFESSOR', d = {"Okay. If you have any questions about the art studio", "or about art equipment, or art in general, just let me know."} })
	add({ n = 'CECILIA', d = {"okay, thank you ma'am!"} })
	add({ n = '', d = {"You exited the Art studio and took a little stroll before", "heading back to your dorm and turning in for the night."}, 
end

if gs.ruby_quest == true then
	add({ d = {"The Art studio is empty. The smell of paint and clay is", "a bit overwhelming..."}, node = 'nodes/ch1/ruby_quest_progress_check.lua' })
	
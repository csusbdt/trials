-- Scene with Damien

add({ 
	n = '', 
	lg = '', 
	f = next_afternoon,
	bg = bg.lecture_hall,
	sm = sm.mc_sweat, 
	m = mu.friendly, 
	d = { "I made it to class." }
})

add({ sm = sm.mc, d = { "I need to settle down and think straight.", "Physics is hard to understand." } })

add({ n = 'DAMIEN', lg = lg.damien, sm = sm.mc, m = mu.friendly, d = { "Hi.", "I'm Damien." } })

add({ n = 'CECILIA', d = { "Nice to meet you." } })

add({ n = '', d = { "Lot's of dialog..." } })

local choice1
local choice2
local finish

add({ 
	n = '', 
	d = { "You decide about soemthing." },
	c = {
		{ t = "choice 1", f = function() choice1() end },
		{ t = "choice 2", f = function() choice2() end }
	}
})

choice1 = function()
	add({ n = 'CECILIA', d = { "I picked choice 1.", "..." } })
	finish()
end

choice2 = function()
	add({ n = 'CECILA', d = { "I picked choice 2." } })
	finish()
end

finish = function()
	add({ n = '', d = { "I'm going to return to my room." }, node = 'nodes/ch1/night1.lua' })
end



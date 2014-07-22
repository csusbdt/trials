-- Initialize game states.

-- Initialize dispositions.
gs.kaira   = 0
gs.ruby    = 0
gs.lily    = 0
gs.damien  = 0
gs.wilhelm = 0
gs.jessie  = 0
gs.erika   = 0

-- Initialize date and time.
gs.month = 'Sep'
gs.day   = 12
gs.dow   = 'Mon'
gs.time  = 'morning'

ui.bg    = 'bg/cecilias_room_day.jpg'
ui.lg    = ''
ui.sm    = 'sm/MC.png'
ui.n     = ''
ui.d     = { "Cecilia is running down the street, late for class as normal." }

log()

sequence({
	{ d = { "Normally, this wouldn’t bother her,", "but if one is late for class the first day,", "you get dropped." } },
	{ d = { "She accidentally bumps into a strange girl." } },
	{ d = { "Cecilia didn't notice at the time, but she broke the girl's vase." } },
	{ n = 'STRANGE GIRL', d = { "Owww...." } },
	{ n = 'CECILIA', d = { "Owww!" }, sm = 'sm/MC_shock.png' }, 
	{ d = { "Watch where you’re going!" } }, 
	{ d = { "Geez, you’re going to make me late!" } }, 
	{ n = 'STRANGE GIRL', d = { "...S-sorry! I’m sorry! I..." }, sm = 'sm/MC.png' },
	{ d = { "..." } },
-- TODO from here
	{ n = '', d = { "The strange girl notices her broken vase and starts to cry." },
		c = {	
			{ t = "Apologize and be late.", f = next_node_function("nodes/physics.lua") },
			{ t = "Leave the girl.", f = next_node_function("nodes/center/entrance.lua") }
		}
	},
	{ d = { "TODO: branch here" }, next = next_node_function('nodes/library/entrance.lua') }
})


-- Because we are the first node, initialize dispositions.
gs.kaira   = 0
gs.ruby    = 0
gs.lily    = 0
gs.damien  = 0
gs.wilhelm = 0
gs.jessie  = 0
gs.erika   = 0

-- Because we are the first node, initialize date and time.
gs.month = 'Sep'
gs.day   = 12
gs.dow   = 'Mon'
gs.time  = 'morning'

local function apologize()
	gs.ruby = -40
end

local function leave()
	gs.lily = -60
	gonode("nodes/physics.lua")
end

local choices = {
	{ t = "Apologize and be late.", f = apologize },
	{ t = "Leave the girl.", f = leave }
}

return {
	{
		bg = 'bg/cecilias_room_day.jpg',
		sm = 'sm/MC.png',
		d  = { "Cecilia is running down the street, late for class as normal." }
	},
	{ d = { "Normally, this wouldn’t bother her,", "but if one is late for class the first day,", "you get dropped." } },
	{ d = { "She accidentally bumps into a strange girl." } },
	{ d = { "Cecilia didn't notice at the time, but she broke the girl's vase." } },
	{ n = 'STRANGE GIRL', d = { "Owww...." } },
	{ 
		n = 'CECILIA', 
		d = { "Owww!" }, 
		sm = 'sm/MC_shock.png' 
	}, 
	{ d = { "Watch where you’re going!" } }, 
	{ d = { "Geez, you’re going to make me late!" } }, 
	{ 
		n = 'STRANGE GIRL', 
		d = { "...S-sorry! I’m sorry! I..." }, 
		sm = 'sm/MC.png' 
	},
	{ d = { "..." } },
	{ 	n = '', 
		d = { "The strange girl notices her broken vase and starts to cry." },
		c = choices
	},
	{ d = { "I'm sorry." }, sm = 'sm/MC.png' },
	{ d = { "I see that I broke your vase." } },
	{ 
		f = function() 
			ui.reset()
			ui.d = { "THE END" }
			next = function() end 
		end
	}
}

--[[
-- Normal node initialization.
ui.bg    = 'bg/cecilias_room_day.jpg'
ui.lg    = ''
ui.sm    = 'sm/MC.png'
ui.n     = ''
ui.d     = { "Cecilia is running down the street, late for class as normal." }

local function apologize()
	gs.ruby = -40
	gonode("nodes/physics.lua")
end

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
--]]


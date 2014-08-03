local qu = {}

local mt = {}

mt.__index = mt
setmetatable(qu, mt)

function mt.reset()
	while #qu > 0 do
		table.remove(qu)
	end
end

function mt.add(e)
	table.insert(qu, e)
end

function mt.next()
	local update_gs = false
	while ui.node do
		node = ui.node
		ui.node = nil
		dofile(node)
		update_gs = true
	end
	if #qu == 0 then 
		print('queue empty')
		return
	end
	local e = table.remove(qu, 1)
	if e.bg then ui.bg = e.bg end
	if e.lg then ui.lg = e.lg end
	if e.sm then ui.sm = e.sm end
	if e.n  then ui.n  = e.n  end
	if e.m  then ui.m  = e.m  end
	music.set(ui.m)
	if type(e.d) == 'string' then
		ui.d = { e.d }
	else
		ui.d = e.d
	end
	if ui.d then log.add(ui.d) end
	ui.c = e.c
	if e.f then e.f() end
	if e.s then 
		sounds.play(e.s)
	end
	if e.node then
		ui.node = e.node
	end
	if update_gs then
		gs.time  = ui.time
		gs.dow   = ui.dow
		gs.day   = ui.day
		gs.month = ui.month
		gs.node  = node
		gs.lg    = ui.lg
		gs.sm    = ui.sm
		gs.bg    = ui.bg
		gs.m     = ui.m
	end
	--draw()
end

return qu


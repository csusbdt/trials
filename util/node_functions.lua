--event_queue = {}

function gonode(node)
	gs.node = node
	ui.reset()
	qu.reset()
	dofile(node)
	qu.next()
end

--[[

function clear_events()
	while #event_queue > 0 do
		table.remove(event_queue) 
	end
end

function add(event)
	table.insert(event_queue, event)
end

function push_front_list(list)
	for _, e in ipairs(event_queue) do
		table.insert(list, e)
	end
	event_queue = list
end

function next()
print(#event_queue)
	if not #event_queue == 0 then
		msgbox("Next goes nowhere.")
		quit()
	end
	local e = table.remove(event_queue, 1)
	if e.bg then ui.bg = e.bg end
	if e.lg then ui.lg = e.lg end
	if e.sm then ui.sm = e.sm end
	if e.n  then ui.n  = e.n  end
	if e.m  then ui.m  = e.m  end
	music.set(ui.m)
	ui.d = e.d
	if ui.d then log() end
	ui.c = e.c
	if e.f then e.f() end
end
--]]


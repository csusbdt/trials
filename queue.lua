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
	ui.d = e.d
	if ui.d then log.add(e.d) end
	ui.c = e.c
	if e.f then e.f() end
end

return qu


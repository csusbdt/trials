function gonode(node)
	gs.node = node
	ui.i = 1
	ui.s = dofile(node)
	log()
end

function next()
	if ui.i > #ui.s then msgbox("Next goes nowhere."); return end
	local d = ui.s[ui.i]
	ui.bg = d.bg or ui.bg
	ui.lg = d.lg or ui.lg
	ui.sm = d.sm or ui.sm
	ui.n  = d.n  or ui.n
	ui.d  = d.d
	if ui.d then log() end
	ui.c = d.c
	ui.m = d.m or ui.m
	music.set(ui.m)
	ui.i = ui.i + 1
	if d.f then d.f() end
end

--[[
local function next_function()
	if ui.i > #ui.s then msgbox("Next goes nowhere."); return end
	local d = ui.s[ui.i]
	ui.date = d.date or ui.date
	ui.bg = d.bg or ui.bg
	ui.lg = d.lg or ui.lg
	ui.sm = d.sm or ui.sm
	ui.n = d.n or ui.n
	ui.d = d.d
	if ui.d then log() end
	next = d.next or next
	ui.c = d.c
	ui.m = d.m or ui.m
	music.set(ui.m)
	ui.i = ui.i + 1
end

function sequence(seq)
	ui.i = 1
	ui.s = seq
	next = next_function
end
--]]

--function next_node(node)
--	gs.node = node
--	ui.c = nil
--	dofile(node)
--	music.set(ui.m)
--end

--[[
function next_node_function(node)
	return function()
		gs.node = node
		ui.c = nil
		dofile(node)
		music.set(ui.m)
	end
end
--]]



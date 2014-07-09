if not sf.node then sf.node = 'nodes/start.lua' end

function draw()
	set_draw_color(0, 0, 0, 255)
	render_clear()
	ui_dialog.draw()
	ui_menu.draw()
	ui_choices.draw()
	render()
end

function on_update()
end

function on_touch(x, y)
	if not ui_choices.empty() then
		if ui_choices.on_touch(x, y) then return true end
	end
	if ui_menu.on_touch(x, y) then
		return true
	end
	if ui_choices.empty() and ui_dialog.on_touch(x, y) then
		return true
	end
	return false
end

local s
local i = 1

local function next_function()
	if i > #s then msgbox("Next goes nowhere."); return end
	if s[i].date then ui_menu.date = s[i].date end
	if s[i].bg then ui_dialog.bg = s[i].bg end
	if s[i].lg then ui_dialog.lg = s[i].lg end
	if s[i].sm then ui_dialog.sm = s[i].sm end
	if s[i].n then ui_dialog.n = s[i].n end
	if s[i].d then ui_dialog.d = s[i].d; ui_log.add_dialog() end
	if s[i].next then next = s[i].next end
	ui_choices.c = s[i].c
	if s[i].m then ui_dialog.m = s[i].m end
	music.set(ui_dialog.m)
	i = i + 1
end

function next_node_function(node)
	return function()
		sf.node = node
		ui_dialog.c = nil
		dofile(node)
		music.set(ui_dialog.m)
	end
end

function set_next(sequence)
	i = 1
	s = sequence
	next = next_function
end

dofile(sf.node)


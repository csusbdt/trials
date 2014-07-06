if not sf.node then sf.node = 'start' end

function load_textures()
end

function draw()
	set_draw_color(0, 0, 0, 255)
	render_clear()
	dialog.draw()
	menu.draw()
	render()
end

function on_update()
end

function on_touch(x, y)
	if menu.on_touch(x, y) then
		return
	elseif dialog.on_touch(x, y) then
		return
	end
end

local i = 1

local function next_function()
	if i > #s then msgbox("Next goes nowhere."); return end
	if s[i].date then menu.date = s[i].date end
	if s[i].bg then dialog.bg = s[i].bg end
	if s[i].lg then dialog.lg = s[i].lg end
	if s[i].sm then dialog.sm = s[i].sm end
	if s[i].name then dialog.name = s[i].name end
	if s[i].d then dialog.d = s[i].d end
	if s[i].next then next = s[i].next end
	if s[i].c then dialog.c = s[i].c end
	i = i + 1
end

function set_next(sequence)
	i = 1
	s = sequence
	next = next_function
end

dofile('nodes/' .. sf.node .. '.lua')


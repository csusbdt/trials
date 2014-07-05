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

dofile('nodes/' .. sf.node .. '.lua')



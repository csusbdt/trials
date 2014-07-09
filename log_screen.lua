
function draw()
	set_draw_color(0, 0, 0, 255)
	render_clear()
	ui_log.draw()
	render()
end

function on_update()
end

function on_touch(x, y)
	if ui_log.on_touch(x, y) then
		return true
	end
	return false
end

draw()


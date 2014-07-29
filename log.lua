local log = {}

local max_lines = 16
local lines = 0
local items = {}

function log.add(d)
	local item = {
		n = ui.n, 
		d = d
	}
	table.insert(items, item)
	lines = lines + #d
	while lines > max_lines do
		lines = lines - #items[1].d
		table.remove(items, 1) 
	end
end

function log.reset()
	for k in pairs(items) do 
		items[k] = nil 
	end
end

function log.draw()
	local log_box_texture = textures.image('gui/UI-log-box.png')

	local x = (design_width - log_box_texture.w) / 2
	local y = (design_height - 110 - log_box_texture.h) / 2

	log_box_texture:draw(x, y)

	name_x = x + 30
	dialog_x = x + 360
	y = y + 190
	local dy = 50
	local texture

	for _, item in ipairs(items) do
		if item.n and string.len(item.n) > 0 then
			texture = ui.overlay_text_font:text(item.n .. ':', blue)
			texture:draw(name_x, y)
		end
		for _, v in ipairs(item.d) do
			texture = ui.overlay_text_font:text(v, black)
			texture:draw(dialog_x, y)
			y = y + dy
		end
		y = y + 10
	end
end

function log.on_touch(x, y)
	ui.overlay = 'none'
	return true
end

return log


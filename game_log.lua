game_log = {}

--local item_font = fonts.create("fonts/CaviarDreams.ttf", 22)
--local menu_font = fonts.create("fonts/CaviarDreams.ttf", 24)

local up_button 
local down_button 
local exit_button 

local max_items = 17
local items = {}

function log()
	if not ui.d or #ui.d == 0 then return end
	local item = {
		n = ui.n, 
		d = ui.d
	}
	table.insert(items, item)
	if #items > max_items then table.remove(items, 1) end
	item_index = #items
end

function game_log.draw()
	local log_box_texture = textures.image('gui/UI-log-box.png')

	local x = (design_width - log_box_texture.w) / 2
	local y = (design_height - 110 - log_box_texture.h) / 2

	log_box_texture:draw(x, y)

	name_x = x + 30
	dialog_x = x + 360
	y = y + 190
	local dy = 60
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
	end
end

function game_log.on_touch(x, y)
	ui.overlay = 'none'
	return true
end

return game_log


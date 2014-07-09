ui_log = {}

local max_items = 3
local items = {}
local item_index = 0

function ui_log.add_dialog()
	local item = {
		n = ui_dialog.n, d = ui_dialog.d
	}
	table.insert(items, item)
	if #items > 10 then table.remove(items, 1) end
	item_index = #items
end

local item_font = fonts.create("fonts/CaviarDreams.ttf", 22)
local menu_font = fonts.create("fonts/CaviarDreams.ttf", 24)

local up_button 
local down_button 
local exit_button 

function ui_log.draw()
	local texture

	local x = 30
	local y = 30
	local dy = 30

	if item_index > 0 then
		texture = item_font:text(items[item_index].n .. ':', white)
		texture:draw(x, y)
		y = y + dy
		for i, v in ipairs(items[item_index].d) do
			texture = item_font:text(v, white)
			texture:draw(x, y)
			y = y + dy
		end
	end

	y = 400
	local dx = 100
	texture = menu_font:text("UP", white)
	up_button = buttons.create_from_texture(texture, x, y)
	x = x + dx
	texture = menu_font:text("DOWN", white)
	down_button = buttons.create_from_texture(texture, x, y)
	x = x + dx
	texture = menu_font:text("EXIT", white)
	exit_button = buttons.create_from_texture(texture, x, y)

	up_button   : draw()
	down_button : draw()
	exit_button : draw()
end

function ui_log.on_touch(x, y)
	if up_button:contains(x, y) then
		if item_index > 1 then item_index = item_index - 1 end
		draw()
		return true
	elseif down_button:contains(x, y) then 
		if item_index < #items then item_index = item_index + 1 end
		draw()
		return true
	elseif exit_button:contains(x, y) then 
		dofile('game_screen.lua')
		return true
	end
	return false
end

return ui_log



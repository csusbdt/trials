game_log = {}

local item_font = fonts.create("fonts/CaviarDreams.ttf", 22)
local menu_font = fonts.create("fonts/CaviarDreams.ttf", 24)

local up_button 
local down_button 
local exit_button 

local max_items = 20
local items = {}
local item_index = 0

function log()
	local item = {
		n = ui.n or '', 
		d = ui.d or ''
	}
	table.insert(items, item)
	if #items > max_items then table.remove(items, 1) end
	item_index = #items
end

function game_log.draw()

	-- Display overlay background.

	local overlay_w = 48 * 16
	local overlay_h = 48 *  9
	local overlay_x = (design_width  - overlay_w) / 2
	local overlay_y = (design_height - overlay_h) / 2

        blendmode_blend()
        set_draw_color(ui.overlay_r, ui.overlay_g, ui.overlay_b, ui.overlay_a)
        fill_rect(overlay_x, overlay_y, overlay_w, overlay_h)

	local x = overlay_x + 30
	local y = overlay_y + 30

	local texture
	local dy = 30

	if item_index > 0 then
		texture = ui.overlay_text_font:text(items[item_index].n .. ':', ui.overlay_text_color)
		texture:draw(x, y)
		y = y + dy
		for i, v in ipairs(items[item_index].d) do
			texture = ui.overlay_text_font:text(v, ui.overlay_text_color)
			texture:draw(x, y)
			y = y + dy
		end
	end

	x = 250
	y = overlay_h - 15
	local dx = 220
	texture = ui.overlay_button_font:text("BACK", ui.overlay_text_color)
	up_button = buttons.create_from_texture(texture, x, y)
	x = x + dx
	texture = ui.overlay_button_font:text("FORWARD", ui.overlay_text_color)
	down_button = buttons.create_from_texture(texture, x, y)
	x = x + dx
	texture = ui.overlay_button_font:text("EXIT", ui.overlay_text_color)
	exit_button = buttons.create_from_texture(texture, x, y)

	up_button   : draw()
	down_button : draw()
	exit_button : draw()
end

function game_log.on_touch(x, y)
	if up_button:contains(x, y) then
		if item_index > 1 then item_index = item_index - 1 end
		return true
	elseif down_button:contains(x, y) then 
		if item_index < #items then item_index = item_index + 1 end
		return true
	elseif exit_button:contains(x, y) then 
		game_log.show = false
		return true
	end
	return false
end

return game_log

